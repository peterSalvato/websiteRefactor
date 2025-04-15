#!/usr/bin/env php
<?php

$oldRepo = __DIR__ . '/.petersalvatodotcom';
$newRepo = __DIR__;

$navFile     = "$oldRepo/config/nav.php";
$projectsSrc = "$oldRepo/data/projects";
$projectsDst = "$newRepo/Data/Projects/Uncategorized";
$journalSrc  = "$oldRepo/journal/entries";
$journalDst  = "$newRepo/Journal/Entries";

function extractProjectSlugs(array $items, &$found = []) {
    foreach ($items as $label => $val) {
        if (is_array($val)) {
            extractProjectSlugs($val, $found);
        } elseif (is_string($val) && str_contains($val, 'page=Project&slug=')) {
            parse_str(parse_url($val, PHP_URL_QUERY), $params);
            if (isset($params['slug'])) {
                $parts = explode('/', $params['slug']);
                $found[] = $parts[1] ?? null;
            }
        }
    }
    return array_filter(array_unique($found));
}

echo "🔍 Reading project slugs from nav...\n";

$nav = include $navFile;
$slugs = extractProjectSlugs($nav);

if (empty($slugs)) {
    echo "⚠️  No project slugs found.\n";
    exit(0);
}

foreach ($slugs as $slug) {
    $src = "$projectsSrc/{$slug}.php";
    $destDir = "$projectsDst/$slug";
    $dest = "$destDir/Data.php";

    if (!file_exists($src)) {
        echo "⚠️  Missing: $src\n";
        continue;
    }

    if (!is_dir($destDir)) {
        mkdir($destDir, 0777, true);
    }

    copy($src, $dest);
    echo "✅ $slug → Uncategorized/$slug/Data.php\n";
}

echo "\n📝 Copying journal entries...\n";

if (!is_dir($journalDst)) {
    mkdir($journalDst, 0777, true);
}

$entries = glob("$journalSrc/*.md");
foreach ($entries as $entry) {
    copy($entry, "$journalDst/" . basename($entry));
}

echo "✅ Copied " . count($entries) . " journal entries to Journal/Entries/\n";
echo "\n🏁 Migration complete.\n";

