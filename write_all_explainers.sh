#!/bin/bash

DEST="./Data/Projects/.Scaffolded"
mkdir -p "$DEST"
echo "🛠 Writing all explainer projects to $DEST..."

write_project() {
  FILENAME=$1
  CONTENT=$2
  FILE="$DEST/$FILENAME"
  echo "Creating: $FILE"
  cat <<EOF > "$FILE"
$CONTENT
EOF
}

# 🟨 Aiden Jae
write_project "AidenJae.php" "<?php
return [
  'title' => 'Aiden Jae',
  'slug' => 'aiden-jae',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/aiden-jae/cover.jpg',
  'coverImageAlt' => 'Soft jewelry photography with warm tones.',
  'description' => 'A jewelry brand rooted in symbolism and sustainability—delicate, intentional, and quietly radiant.',
  'tags' => ['branding', 'jewelry', 'identity', 'shopify', 'sustainability'],
  'sections' => [
    [
      'title' => 'Context / Problem',
      'text' => '<p>Most fine jewelry is priced out of reach—especially for younger generations navigating a different economic reality than their parents. The idea behind Aiden Jae was simple: to create something beautiful, considered, and lasting without the exclusionary price tag.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<p>The creative vision was already present—delicate gold jewelry inspired by tropical forms. My role was to translate that sensibility into a cohesive brand story and full visual system, including logo, typography, packaging, website, and photography.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'System & Execution',
      'text' => '<p>A restrained identity with soft neutrals, typographic clarity, and texture-rich materials. The site architecture and visual language support young, sustainability-conscious buyers with a refined-but-accessible tone.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>A lesson in commercial viability: how to evolve in response to real-world constraints while keeping philosophical clarity. Structural design = strategic clarity.</p>',
      'image' => null,
      'imageAlt' => ''
    ]
  ]
];
"

# 🟦 Altrueism
write_project "Altrueism.php" "<?php
return [
  'title' => 'Altrueism',
  'slug' => 'altrueism',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/altrueism/cover.jpg',
  'coverImageAlt' => 'Muted type on recycled paper stock.',
  'description' => 'A brand system designed for resonance—even when never released.',
  'tags' => ['branding', 'sustainability', 'visual-system', 'editorial'],
  'sections' => [
    [
      'title' => 'Context / Problem',
      'text' => '<p>The product had integrity, but the brand lacked presence. Altrueism needed to shift toward slowness, craft, and sustainability—without pretense.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<p>The design began expressive, but evolved to structural clarity—grounded in Camp Hill Soltane, communal rhythms, and architectural grids.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'System & Execution',
      'text' => '<ul><li>Humanist type with open spacing</li><li>Grid and proportion-based layouts</li><li>Recycled, textured materials</li><li>Non-performative digital templates</li><li>Brand book written more like a ritual than a pitch deck</li></ul>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>The project never launched, but the system remains real. It’s proof that internal coherence is its own reward—and resistance to noise is a valid form of design.</p>',
      'image' => null,
      'imageAlt' => ''
    ]
  ]
];
"

# 🟥 MathOnTape
write_project "MathOnTape.php" "<?php
return [
  'title' => 'MathOnTape',
  'slug' => 'math-on-tape',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/math-on-tape/cover.jpg',
  'coverImageAlt' => 'Cassette labeled “Modular Arithmetic Vol. 1.”',
  'description' => 'An experimental music project shaped by analog synthesis and structured design.',
  'tags' => ['branding', 'music', 'aesthetic-system', 'cassette'],
  'sections' => [
    [
      'title' => 'Context / Problem',
      'text' => '<p>Originally a personal sound project, it began to demand structure. Not for marketing—but for containment, meaning, and legibility. Identity emerged from obsession.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<ul><li>Parallel development of sound and visual systems</li><li>Cassette futurism and dot-matrix grit</li><li>Check scanner typography, MICR glyphs</li><li>Album art as data artifacts</li></ul>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'System & Execution',
      'text' => '<ul><li>Cataloging system and field glyphs</li><li>Posters, inserts, digital wallpapers</li><li>Halftone apparel and brutalist layout</li><li>Publishing via SoundCloud and Bandcamp</li></ul>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>MathOnTape blurred the line between artifact and identity. It framed personal work as a system. Branding isn’t just surface—it’s structure made visible.</p>',
      'image' => null,
      'imageAlt' => ''
    ]
  ]
];
"
# 🧠 Savepoint Protocol
write_project "SavepointProtocol.php" "<?php
return [
  'title' => 'Savepoint Protocol',
  'slug' => 'savepoint-protocol',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/savepoint-protocol/cover.jpg',
  'coverImageAlt' => 'Screenshot of a timestamped savepoint code block.',
  'description' => 'A cognitive protocol for anchoring thought. Version control for your brain.',
  'tags' => ['protocol', 'workflow', 'cognition', 'documentation', 'markup'],
  'sections' => [
    [
      'title' => 'The Problem',
      'text' => '<p>Creative work is nonlinear. Insight hits between drafts. Most tools lose that thread—or overwrite it. Savepoint anchors meaning without loss.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'The Protocol',
      'text' => '<p>A timestamped, machine-readable block capturing state, function, and intent. Minimal syntax. Graceful degradation. Works in ChatGPT, Markdown, notebooks, or voice.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Use Cases',
      'text' => '<ul><li>Track conceptual breakthroughs</li><li>Version cognitive shifts</li><li>Create searchable audit trails</li><li>Bridge AI interactions and human authorship</li></ul>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Full Spec & Repo',
      'text' => '<p>Open protocol, actively versioned. Built for thinkers, not platforms. Lightweight and interoperable. See full implementation here:</p><p><a href=\"https://github.com/peterSalvato/Savepoint.Protocol\" target=\"_blank\">Savepoint.Protocol on GitHub →</a></p>',
      'image' => null,
      'imageAlt' => ''
    ]
  ]
];
"

# 🜃 Order of the Ætherwright
write_project "OrderOfTheAetherwright.php" "<?php
return [
  'title' => 'The Order of the Ætherwright',
  'slug' => 'order-of-the-aetherwright',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/order-of-the-aetherwright/cover.jpg',
  'coverImageAlt' => 'Sigil of the Order on textured paper.',
  'description' => 'A fictional order, real system: symbolic infrastructure for sovereign creative work.',
  'tags' => ['systems', 'symbolism', 'philosophy', 'classification'],
  'sections' => [
    [
      'title' => 'What is the Order?',
      'text' => '<p>A fictional philosophical system acting as an operating framework for design, autonomy, and symbolic authorship. Not a brand. Not a cult. A code.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Core Principles',
      'text' => '<p>Built on triads, recursion, and structural alignment. Uses symmetry, modular glyphs, and internal doctrine. Treats awareness, structure, and craft as unified.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Glyph System',
      'text' => '<p>Practitioner tiers. Domain glyphs. Internal classification. Each project or participant bears a sigil that encodes their role and mode of work. Both symbolic and functional.</p>',
      'image' => null,
      'imageAlt' => ''
    ],
    [
      'title' => 'Explore the Codex',
      'text' => '<p>Complete doctrine and system live in the GitHub codex. Doctrine, glyph maps, and narrative structure available here:</p><p><a href=\"https://github.com/peterSalvato/order-of-the-aetherwright\" target=\"_blank\">Order of the Ætherwright Repository →</a></p>',
      'image' => null,
      'imageAlt' => ''
    ]
  ]
];
"

echo "✅ All 5 explainer files written with full content and image structure to $DEST"
