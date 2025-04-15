<?php

use App\JournalService;

$entries = JournalService::loadAll();

return [
    'view' => 'JournalList',
    'data' => ['entries' => $entries, 'title' => 'Journal']
];
