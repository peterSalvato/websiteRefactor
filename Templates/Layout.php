<!DOCTYPE html>
<html lang="en">
<head>
  <?php include __DIR__ . '/Head.php'; ?>
  <title><?= $title ?? 'My Site' ?></title>
</head>
<body>

  <?php include __DIR__ . '/Header.php'; ?>

  <nav id="siteNav">
    <?php include __DIR__ . '/Nav.php'; ?>
  </nav>

  <main>
    <?php include __DIR__ . '/' . $template . '.php'; ?>
  </main>

  <?php include __DIR__ . '/Footer.php'; ?>

</body>
</html>
