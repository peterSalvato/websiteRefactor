<?php
namespace App;

use Spatie\YamlFrontMatter\YamlFrontMatter;

class JournalService
{
    public static function loadAll(): array
    {
        $entries = [];
        $files = glob(__DIR__ . '/../Journal/Entries/*.md');

        foreach ($files as $file) {
            $doc = YamlFrontMatter::parseFile($file);
            $entries[] = [
                'slug' => basename($file, '.md'),
                'title' => $doc->matter('title') ?? '(Untitled)',
                'date' => $doc->matter('date') ?? '',
                'tags' => $doc->matter('tags') ?? [],
                'html' => trim($doc->body()) // raw HTML body
            ];
        }

        usort($entries, fn($a, $b) => strtotime($b['date']) <=> strtotime($a['date']));
        return $entries;
    }

    public static function loadOne(string $slug): ?array
    {
        $path = __DIR__ . "/../Journal/Entries/{$slug}.md";

        if (!file_exists($path)) return null;

        $doc = YamlFrontMatter::parseFile($path);

        return [
            'slug' => $slug,
            'title' => $doc->matter('title') ?? '(Untitled)',
            'date' => $doc->matter('date') ?? '',
            'tags' => $doc->matter('tags') ?? [],
            'html' => trim($doc->body()) // raw HTML body
        ];
    }
}
