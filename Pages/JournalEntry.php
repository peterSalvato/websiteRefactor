<?php

use App\JournalService;

$slug = $_GET['slug'] ?? '';
$entry = JournalService::loadOne($slug);

if (!$entry) {
    http_response_code(404);
    echo "Entry not found.";
    return null;
}

return [
    'view' => 'JournalEntry',
    'data' => $entry + ['title' => $entry['title']]
];
