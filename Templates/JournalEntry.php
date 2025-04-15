<article class="journal-entry">
  <h2><?= htmlspecialchars($title ?? 'Untitled') ?></h2>

  <?php if (!empty($timestamp)): ?>
    <p><small><?= date('F j, Y', $timestamp) ?></small></p>
  <?php endif; ?>

  <div class="entry-body">
    <?= $html ?? '' ?>
  </div>

  <?php if (!empty($tags)): ?>
    <p><strong>Tags:</strong> <?= implode(', ', $tags) ?></p>
  <?php endif; ?>
</article>
