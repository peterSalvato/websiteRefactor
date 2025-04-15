<?php

use App\JournalService;

$slug = $_GET['slug'] ?? null;

if (!$slug) {
    return [
        'view' => 'JournalList',
        'data' => [
            'error' => 'No journal slug provided.',
            'entries' => JournalService::loadAll()
        ]
    ];
}

$entry = JournalService::loadEntry($slug);

if (!$entry) {
    return [
        'view' => 'JournalList',
        'data' => [
            'error' => 'Journal entry not found.',
            'entries' => JournalService::loadAll()
        ]
    ];
}

return [
    'view' => 'JournalEntry',
    'data' => $entry
];
