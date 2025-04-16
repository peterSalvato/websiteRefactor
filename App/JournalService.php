<?php

namespace App;

use Spatie\YamlFrontMatter\YamlFrontMatter;
use Parsedown;

class JournalService
{
    public static function loadAll(): array
    {
        $entries = [];

        foreach (glob(__DIR__ . '/../Journal/Entries/*.md') as $file) {
            $slug = basename($file, '.md');
            $entry = self::loadEntry($slug);

            if ($entry && ($entry['publish'] ?? true)) {
                $entries[] = $entry;
            }
        }

        usort($entries, function ($a, $b) {
            return ($b['timestamp'] ?? 0) <=> ($a['timestamp'] ?? 0);
        });

        return $entries;
    }


    public static function loadEntry(string $slug): ?array
    {
        $file = __DIR__ . "/../Journal/Entries/{$slug}.md";
    
        if (!file_exists($file)) {
            return null;
        }
    
        $document = YamlFrontMatter::parseFile($file);
        $parsedown = new Parsedown();
        $bodyHtml = $parsedown->text($document->body());
    
        $matter = $document->matter();
    
        // 🔒 Force slug from filename — override frontmatter value if it exists
        $matter['slug'] = $slug;
    
        return $matter + [
            'html' => $bodyHtml,
        ];
    }
    


}
