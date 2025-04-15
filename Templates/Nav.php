<?php

$navItems = require __DIR__ . '/../Config/Nav.php';

function slugify($label)
{
    $text = strip_tags($label);
    $text = strtolower(trim($text));
    $text = preg_replace('/[^a-z0-9]+/', '-', $text);
    return trim($text, '-');
}

function renderNav(array $items, string $currentPage, string $currentSlug = null)
{
    echo '<ul class="nav">';

    foreach ($items as $label => $item) {
        $url = '';
        $attrs = '';
        $children = [];

        // Flattened link
        if (is_string($item)) {
            $url = $item;
        }

        // Structured item
        if (is_array($item)) {
            $url = $item['url'] ?? '#';
            $attrs = $item['attrs'] ?? '';
            $children = $item['children'] ?? [];
        }

        // Active logic
        $isActive = false;
        if (str_contains($url, '?')) {
            parse_str(parse_url($url, PHP_URL_QUERY), $params);
            $isActive =
                ($params['page'] ?? null) === $currentPage &&
                (!isset($params['slug']) || ($params['slug'] ?? '') === $currentSlug);
        }

        // Build class list
        $classes = [];
        if (!str_contains($attrs, 'class=')) {
            $classes[] = 'nav-item';
            $classes[] = 'nav-' . slugify($label);
        }
        if ($isActive) {
            $classes[] = 'active';
        }

        $classAttr = 'class="' . implode(' ', $classes) . '"';

        // If user defined attrs, merge it
        if (!empty($attrs)) {
            // Inject class if not already in attrs
            if (!str_contains($attrs, 'class=')) {
                $attrs = trim($attrs . ' ' . $classAttr);
            }
        } else {
            $attrs = $classAttr;
        }

        echo "<li $attrs><a href=\"" . htmlspecialchars($url) . "\">$label</a>";

        if (!empty($children)) {
            renderNav($children, $currentPage, $currentSlug);
        }

        echo '</li>';
    }

    echo '</ul>';
}

// Pull current page context
$currentPage = $_GET['page'] ?? '';
$currentSlug = $_GET['slug'] ?? null;

renderNav($navItems, $currentPage, $currentSlug);
