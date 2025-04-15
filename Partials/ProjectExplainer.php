<?php if (isset($title)): ?>
  <h2><?= htmlspecialchars($title) ?></h2>
<?php endif; ?>

<?php if (isset($description)): ?>
  <p><?= nl2br(htmlspecialchars($description)) ?></p>
<?php endif; ?>

<?php if (!empty($tags)): ?>
  <p><strong>Tags:</strong> <?= implode(', ', $tags) ?></p>
<?php endif; ?>
