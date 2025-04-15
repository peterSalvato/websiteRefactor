<?php if (!empty($sections)): ?>
  <?php foreach ($sections as $section): ?>
    <div class="project-section">
      <?php if (!empty($section['text'])): ?>
        <div class="project-text"><?= $section['text'] ?></div>
      <?php endif; ?>

      <?php if (!empty($section['media'])): ?>
        <div class="project-media">
          <?php foreach ($section['media'] as $media): ?>
            <?php if ($media['type'] === 'image'): ?>
              <figure>
                <img src="<?= $media['src'] ?>" alt="">
                <?php if (!empty($media['caption'])): ?>
                  <figcaption><?= $media['caption'] ?></figcaption>
                <?php endif; ?>
              </figure>
            <?php endif; ?>
          <?php endforeach; ?>
        </div>
      <?php endif; ?>
    </div>
  <?php endforeach; ?>
<?php endif; ?>
