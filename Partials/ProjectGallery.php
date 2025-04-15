<?php if (!empty($gallery)): ?>
  <div class="project-gallery">
    <?php foreach ($gallery as $image): ?>
      <img src="<?= htmlspecialchars($image) ?>" alt="">
    <?php endforeach; ?>
  </div>
<?php endif; ?>
