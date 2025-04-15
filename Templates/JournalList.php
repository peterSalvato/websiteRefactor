<ul class="journal-list">
<?php foreach ($entries as $entry): ?>
    <li>
        <a href="?page=JournalEntry&slug=<?= $entry['slug'] ?>">
            <?= htmlspecialchars($entry['title']) ?>
        </a>
        <small><?= $entry['date'] ?></small>
    </li>
<?php endforeach; ?>
</ul>
