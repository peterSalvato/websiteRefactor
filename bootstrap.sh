#!/bin/bash

# Create folders
mkdir -p \
  App \
  Config \
  Data/Projects \
  Journal/Entries \
  Pages \
  Partials \
  Templates \
  Public

# === App Files ===
cat > App/View.php <<'PHP'
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
PHP

cat > App/Router.php <<'PHP'
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
PHP

# === Public Front Controller ===
cat > Public/index.php <<'PHP'
<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once __DIR__ . '/../App/View.php';
require_once __DIR__ . '/../App/Router.php';

use App\Router;

$page = $_GET['page'] ?? 'Home';

$router = new Router($page);
$router->handle();
PHP

# === Pages ===
cat > Pages/Home.php <<'PHP'
<?php

return [
    'view' => 'Home',
    'data' => [
        'title' => 'Welcome Home',
        'message' => 'You now have a clean foundation.'
    ]
];
PHP

# === Templates ===
cat > Templates/Layout.php <<'PHP'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $title ?? 'My Site' ?></title>
</head>
<body>
    <header>
        <h1><?= $title ?? 'My Site' ?></h1>
    </header>

    <main>
        <?php include __DIR__ . '/' . $template . '.php'; ?>
    </main>

    <footer>
        <p>&copy; <?= date('Y') ?> Peter Salvato</p>
    </footer>
</body>
</html>
PHP

cat > Templates/Home.php <<'PHP'
<p><?= $message ?></p>
PHP

# Done
echo "✅ Bootstrap complete. Run: composer install && php -S localhost:8000 -t Public"
