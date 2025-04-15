<?php
namespace App;

class Router
{
    private string $page;

    public function __construct(string $page)
    {
        $this->page = $page;
    }

    public function handle()
    {
        $file = __DIR__ . '/../Pages/' . $this->page . '.php';

        if (!file_exists($file)) {
            http_response_code(404);
            echo "Page not found: {$this->page}";
            return;
        }

        $result = require $file;

        if (!is_array($result) || !isset($result['view'])) {
            echo "Invalid page response format.";
            return;
        }

        View::render($result['view'], $result['data'] ?? []);
    }
}
