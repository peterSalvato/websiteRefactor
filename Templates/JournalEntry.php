<article class="journal-entry">
  <h2><?= htmlspecialchars($title) ?></h2>

  <?php if (!empty($date)): ?>
    <p><small><?= date('F j, Y', strtotime($date)) ?></small></p>
  <?php endif; ?>

  <div class="entry-body">
    <?= $html ?> <!-- This is now raw HTML content -->
  </div>

  <?php if (!empty($tags)): ?>
    <p><strong>Tags:</strong> <?= implode(', ', $tags) ?></p>
  <?php endif; ?>
</article>
