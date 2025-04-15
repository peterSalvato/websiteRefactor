<?php

// 1. Use flat 'gallery' key if present
if (!empty($gallery)) {
  echo '<div class="project-gallery">';
  foreach ($gallery as $src) {
    echo '<figure class="gallery-item">';
    echo '<img src="' . htmlspecialchars($src) . '" alt="">';
    echo '</figure>';
  }
  echo '</div>';
}

// 2. Or fallback to structured sections/media if used
elseif (!empty($sections)) {
  echo '<div class="project-gallery">';
  foreach ($sections as $section) {
    if (!empty($section['media'])) {
      foreach ($section['media'] as $media) {
        if ($media['type'] === 'image') {
          echo '<figure class="gallery-item">';
          echo '<img src="' . htmlspecialchars($media['src']) . '" alt="">';
          if (!empty($media['caption'])) {
            echo '<figcaption>' . $media['caption'] . '</figcaption>';
          }
          echo '</figure>';
        }
      }
    }
  }
  echo '</div>';
}
