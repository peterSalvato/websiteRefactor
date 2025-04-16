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

# Aiden Jae — already formatted in previous message...
write_project "AidenJae.php" "<?php
return [
  'title' => 'Aiden Jae',
  'slug' => 'aiden-jae',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/aiden-jae/cover.jpg',
  'coverImageAlt' => 'Soft jewelry photography with warm tones.',
  'description' => 'A jewelry brand rooted in symbolism and sustainability—delicate, intentional, and quietly radiant.',
  'tags' => ['branding', 'jewelry', 'identity', 'shopify', 'sustainability'],
  'sections' => [/* ... */]
];
"

# Altrueism — as before...
write_project "Altrueism.php" "<?php
return [
  'title' => 'Altrueism',
  'slug' => 'altrueism',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/altrueism/cover.jpg',
  'coverImageAlt' => 'Muted type on recycled paper stock.',
  'description' => 'A brand system designed for resonance—even when never released.',
  'tags' => ['branding', 'sustainability', 'visual-system', 'editorial'],
  'sections' => [/* ... */]
];
"

# MathOnTape — as before...
write_project "MathOnTape.php" "<?php
return [
  'title' => 'MathOnTape',
  'slug' => 'math-on-tape',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/math-on-tape/cover.jpg',
  'coverImageAlt' => 'Cassette with red label: “Modular Arithmetic Vol. 1”',
  'description' => 'An experimental music project shaped by analog synthesis and structured design.',
  'tags' => ['branding', 'music', 'aesthetic-system', 'cassette'],
  'sections' => [/* ... */]
];
"

# Savepoint Protocol — full version
write_project "SavepointProtocol.php" "<?php
return [
  'title' => 'Savepoint Protocol',
  'slug' => 'savepoint-protocol',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/savepoint-protocol/cover.jpg',
  'coverImageAlt' => 'Screenshot of a timestamped savepoint code block on a dark terminal interface.',
  'description' => 'A cognitive protocol for anchoring thought. Version control for your brain.',
  'tags' => ['protocol', 'workflow', 'cognition', 'documentation', 'markup'],
  'sections' => [
    [
      'title' => 'The Problem',
      'text' => '<p>Creative work is nonlinear. Insight hits between drafts. Meaning emerges mid-process. But most tools lose that thread—or worse, overwrite it. When your thinking evolves faster than your documentation, reflection becomes impossible.</p><p><strong>Savepoint Protocol</strong> solves this by giving you version control for your brain. It anchors moments of insight, shift, and intention in the form of a universal cognitive markup.</p>'
    ],
    [
      'title' => 'The Protocol',
      'text' => '<p>At its core, Savepoint is a timestamped markup block that captures a moment in your mental evolution. It’s designed to be machine-readable, searchable, and portable—whether you’re working in ChatGPT, NotebookLM, Markdown, or on paper.</p><p>The syntax is minimal, cold, and structural: no marketing language, no unnecessary abstraction. Each block captures intent, category, function, and message in a standardized way. It’s designed to degrade gracefully—usable even without AI or software.</p>'
    ],
    [
      'title' => 'Use Cases',
      'text' => '<p>Savepoint is used for:</p><ul><li>Anchoring breakthroughs mid-conversation</li><li>Creating audit trails for evolving ideas</li><li>Versioning internal state during complex creative processes</li><li>Bridging AI and human authorship with clarity</li></ul><p>It integrates with the Savepoint CLI, GitHub repos, AI conversations, and personal logs.</p>'
    ],
    [
      'title' => 'Full Spec & Repository',
      'text' => '<p>Savepoint Protocol is published as an open, lightweight system. It is rigorously documented and versioned on GitHub. You can adopt it incrementally, fork the repo, or build your own implementation layers on top.</p><p><a href=\"https://github.com/peterSalvato/Savepoint.Protocol\" target=\"_blank\">View the Savepoint Protocol repository →</a></p>'
    ]
  ]
];
"

# Order of the Aetherwright — full version
write_project "OrderOfTheAetherwright.php" "<?php
return [
  'title' => 'The Order of the Ætherwright',
  'slug' => 'order-of-the-aetherwright',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/order-of-the-aetherwright/cover.jpg',
  'coverImageAlt' => 'Symbolic sigil of the Order of the Ætherwright overlaid on textured paper.',
  'description' => 'A fictional order, real system: symbolic infrastructure for sovereign creative work.',
  'tags' => ['systems', 'symbolism', 'philosophy', 'classification', 'aetherwright'],
  'sections' => [
    [
      'title' => 'What is the Order?',
      'text' => '<p><strong>The Order of the Ætherwright</strong> is a fictional philosophical order—used as a symbolic operating system for creative autonomy, systems design, and personal infrastructure. It is not a brand. It is not a cult. It is a system for sovereign cognition and aesthetic coherence.</p><p>The Order provides symbolic scaffolding to help creatives shape their practice with intentionality. It borrows from monastic orders, operating manuals, occult diagrams, and classification systems to forge a new type of creative protocol: recursive, poetic, and deeply structured.</p>',
      'image' => '/assets/images/projects/order-of-the-aetherwright/sigil-grid.jpg',
      'imageAlt' => 'The Order’s sigil constructed using dynamic symmetry overlays.'
    },
    [
      'title' => 'Core Principles',
      'text' => '<p>The Order is built on a triadic logic. It uses dynamic symmetry, modular glyph systems, and internal doctrine to create a symbolic infrastructure for making. Everything has structure. Every artifact is a node in a broader system. Every mark, a mirror of intent.</p><p>Its principles are emergent: they evolve as the practitioner refines their path. The Order is recursive. It honors ambiguity, contradiction, and the necessity of sacred structure. It treats awareness, symbol, and form as aligned forces.</p><p>Designs created under the Order’s framework often use structural overlays—dynamic symmetry, golden ratio, or grid fragments—to maintain internal alignment with its symbolic geometry.</p>'
    },
    [
      'title' => 'Glyph System',
      'text' => '<p>The Esoteric–Industrial Classification System defines domain glyphs, practice tiers, and systemic boundaries. Each project, field, or practitioner within the Order is marked by these symbols, which both encode and constrain meaning.</p><p>Glyphs function as both metadata and identity. They allow traversal of symbolic context—across project domains, philosophical layers, and cultural intentions.</p><p>The glyphs also track progression: from practitioner to architect, each level reveals more of the Order’s encoded logic and design discipline.</p>',
      'image' => '/assets/images/projects/order-of-the-aetherwright/glyph-classification.jpg',
      'imageAlt' => 'Esoteric–Industrial Classification System showing various domain glyphs.'
    },
    [
      'title' => 'Explore the Codex',
      'text' => '<p>For those seeking the full framework—including doctrine, field guides, symbolic overlays, and philosophical structure—the complete archive lives in the GitHub codex.</p><p><a href=\"https://github.com/peterSalvato/order-of-the-aetherwright\" target=\"_blank\">Open the full archive →</a></p>'
    }
  ]
];
"

echo "✅ All explainer files written successfully to $DEST"
