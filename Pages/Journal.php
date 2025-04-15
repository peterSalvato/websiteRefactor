<?php

use App\JournalService;

return [
    'view' => 'JournalList',
    'data' => [
        'entries' => JournalService::loadAll()
    ]
];
