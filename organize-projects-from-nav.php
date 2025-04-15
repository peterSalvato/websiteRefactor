#!/usr/bin/env php
<?php

$nav = include __DIR__ . '/Config/Nav.php';
$baseDir = __DIR__ . '/Data/Projects';
$uncategorized = "$baseDir/Uncategorized";

function extractProjectSlugs(array $items, &$found = []) {
    foreach ($items as $label => $value) {
        if (is_array($value)) {
            extractProjectSlugs($value, $found);
        } elseif (is_string($value) && str_contains($value, 'page=Project&slug=')) {
            parse_str(parse_url($value, PHP_URL_QUERY), $params);
            if (isset($params['slug'])) {
                $found[] = $params['slug']; // e.g. "Artifacts/EchoAndBone"
            }
        }
    }
    return $found;
}

$slugs = extractProjectSlugs($nav);

echo "📦 Moving project folders to match nav structure...\n";

foreach ($slugs as $slug) {
    [$category, $project] = explode('/', $slug);
    $src = "$uncategorized/$project";
    $dest = "$baseDir/$category/$project";

    if (!is_dir($src)) {
        echo "⚠️  Skipping missing: $src\n";
        continue;
    }

    if (!is_dir(dirname($dest))) {
        mkdir(dirname($dest), 0777, true);
    }

    rename($src, $dest);
    echo "✅ Moved: $project → $category/$project\n";
}

echo "\n🏁 All project folders organized.\n";
