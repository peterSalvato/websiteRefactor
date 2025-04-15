<?php
namespace App;

class View
{
    public static function render(string $template, array $data = [])
    {
        $templatePath = __DIR__ . '/../Templates/' . $template . '.php';

        if (!file_exists($templatePath)) {
            http_response_code(404);
            echo "Template not found: $templatePath";
            return;
        }

        extract($data);
        include __DIR__ . '/../Templates/Layout.php';
    }
}
