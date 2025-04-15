<?php
// data/projects/altrueism.php

return [
  'title' => 'Altrueism',
  'slug' => 'altrueism',
  'layout' => 'explainer',
  'intro' => 'A visual identity rooted in symbolic structure and typographic restraint.',
  'sections' => [
    [
      'text' => <<<HTML
<p>The logomark was built from the letterforms—vertical symmetry as integrity, negative space as invitation. A gesture of containment without control.</p>
HTML,
      'media' => [
        [
          'type' => 'image',
          'src' => '/images/altrueism/logo-forms.jpg',
          'caption' => 'Logomark geometry'
        ]
      ]
    ],
    [
      'text' => '<p>Texture carries memory. The mark was screened onto cloth, photographed, and re-scanned—baked-in ritual wear.</p>',
      'media' => [
        [
          'type' => 'image',
          'src' => '/images/altrueism/tote.jpg',
          'caption' => 'Hand-screened tote bag'
        ]
      ]
    ]
  ],
  'related_journal' => null,
];
