<?php

$slug = $_GET['slug'] ?? '';
$parts = explode('/', $slug);

if (count($parts) === 2) {
    [$category, $project] = $parts;
    $path = __DIR__ . "/../Data/Projects/$category/$project/Data.php";
    
    if (file_exists($path)) {
        $projectData = require $path;

        return [
            'view' => 'ProjectTemplate',
            'data' => $projectData
        ];
    }
}

http_response_code(404);
echo "Project not found.";
return null;