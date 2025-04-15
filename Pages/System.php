<?php

$slug = $_GET['slug'] ?? '';
$path = __DIR__ . '/../Data/Systems/' . $slug . '/Data.php';

if (!file_exists($path)) {
    http_response_code(404);
    echo "System not found.";
    return null;
}

$data = require $path;

return [
    'view' => 'SystemTemplate',
    'data' => $data + ['title' => $data['title'] ?? 'System']
];
