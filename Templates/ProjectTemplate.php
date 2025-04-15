<h2><?= htmlspecialchars($title ?? 'Untitled Project') ?></h2>

<?php if (!empty($intro)): ?>
  <p><?= $intro ?></p>
<?php endif; ?>

<?php
$layout = $layout ?? 'explainer';

if ($layout === 'explainer' || $layout === 'both') {
    include __DIR__ . '/../Partials/ProjectExplainer.php';
}

if ($layout === 'gallery' || $layout === 'both') {
    include __DIR__ . '/../Partials/ProjectGallery.php';
}
?>
