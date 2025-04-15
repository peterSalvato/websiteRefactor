<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../App/View.php';
require_once __DIR__ . '/../App/Router.php';
require_once __DIR__ . '/../App/JournalService.php';

use App\Router;

$page = $_GET['page'] ?? 'Home';

$router = new Router($page);
$router->handle();
