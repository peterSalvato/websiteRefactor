<?php
$navItems = require __DIR__ . '/../Config/Nav.php';

function renderNav($items, $currentPage, $currentSlug = null)
{
    echo '<ul class="nav">';

    foreach ($items as $label => $item) {
        $url = '';
        $children = [];

        // Flat link
        if (is_string($item)) {
            $url = $item;
        }

        // Section with url + children
        if (is_array($item)) {
            $url = $item['url'] ?? '#';
            $children = $item['children'] ?? [];
        }

        // Determine if this is the active page
        $isActive = str_contains($url, "page=$currentPage");

        // For project pages, also match slug if provided
        if ($currentPage === 'Project' && $currentSlug && str_contains($url, $currentSlug)) {
            $isActive = true;
        }

        $class = $isActive ? ' class="active"' : '';

        echo "<li{$class}><a href=\"" . htmlspecialchars($url) . "\">{$label}</a>";

        if (!empty($children)) {
            renderNav($children, $currentPage, $currentSlug);
        }

        echo '</li>';
    }

    echo '</ul>';
}

// Pull active info from URL
$currentPage = $_GET['page'] ?? '';
$currentSlug = $_GET['slug'] ?? null;

renderNav($navItems, $currentPage, $currentSlug);
