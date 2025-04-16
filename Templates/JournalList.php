<?php if (!empty($entries)): ?>
  <ul class="journal-list">
    <?php foreach ($entries as $entry): ?>
      <li>
        <a href="?page=JournalEntry&slug=<?= htmlspecialchars($entry['slug']) ?>">
          <?= htmlspecialchars($entry['title'] ?? 'Untitled') ?>
        </a>
        <?php if (!empty($entry['timestamp'])): ?>
          <small><?= date('F j, Y', $entry['timestamp']) ?></small>
        <?php endif; ?>
      </li>
    <?php endforeach; ?>
  </ul>
<?php else: ?>
  <p>No journal entries found.</p>
<?php endif; ?>
