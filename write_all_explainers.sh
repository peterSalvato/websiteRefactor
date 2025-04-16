#!/bin/bash

DEST="./data/projects"
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

# ------------------------------
# 🟨 Aiden Jae
# ------------------------------
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
      'text' => '<p>Most fine jewelry is priced out of reach—especially for younger generations navigating a different economic reality than their parents. The idea behind Aiden Jae was simple: to create something beautiful, considered, and lasting without the exclusionary price tag. Built around 9k gold, the brand bridges the gap between fast fashion and traditional luxury. It had to feel meaningful, modern, and accessible—not just in price, but in philosophy.</p>'
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<p>The creative vision was already present—delicate gold jewelry inspired by tropical forms: plumerias, banyan trees, and organic curves. My role was to translate that sensibility into a cohesive brand story and full visual system. I developed the entire identity—from logo and typography to color palette, packaging, website, and photography. The tone needed to be gentle, grounded, and precise—refined but not aloof. There was a strong focus on information architecture and site structure as the brand was built out on a Shopify store.</p>'
    ],
    [
      'title' => 'System & Execution',
      'text' => '<p>The identity for Aiden Jae is restrained and elegant—clean typographic wordmark, organic-influenced palette, and a focus on texture and materiality that mirrors the jewelry itself. A soft, neutral color palette was chosen to evoke a sense of calm and elegance, allowing the intricate details of the jewelry to stand out. Behind the softness is a sharp focus on structure. The brand appeals to a younger demographic (high school through millennial) with a focus on green processes and promoting green causes.</p>'
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>Aiden Jae was a lesson in commercial viability—how to listen to market feedback, translate it into action, and evolve both the site and brand accordingly. It reinforced that great branding isn’t just about aesthetic clarity, but structural clarity—positioning a business to grow, adapt, and be understood.</p>'
    ]
  ]
];
"

# ------------------------------
# 🟦 Altrueism
# ------------------------------
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
      'text' => '<p>The client had a product they believed in, but the surrounding brand lacked conviction. Altruism was their pivot—intended to signal a move toward considered, handcrafted objects and sustainable business ethics. The visual identity needed to reflect maturity and clarity without artifice.</p>'
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<p>Initial explorations leaned expressive—script fonts, cursive motion, gesture. But in discovery conversations, a quieter foundation emerged: a deep involvement with Camp Hill Soltane and communal craft. The design shifted to reflect care, rhythm, and structure. A grid system inspired by architectural proportions and textile patterning informed every decision. Typography was humanist and loose but structured; kerning intentionally loose to let the words breathe.</p>'
    ],
    [
      'title' => 'System & Execution',
      'text' => '<ul><li>A restrained wordmark and supporting logotypes</li><li>Color palette of earthen neutrals, grounded greens, and soft carbon</li><li>Print materials with emphasis on touch: recycled stocks, visible fibers</li><li>Social media templates prioritized slowness and clarity over trend</li><li>Brand book written as a meditative tool for intention, not marketing</li></ul>'
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>Altruism never launched, but the system remains intact—a full brand with a strong internal spine. It’s proof that good design doesn’t need external validation to be real. The process taught me that designing for quietness and integrity can be its own kind of rebellion.</p>'
    ]
  ]
];
"

# ------------------------------
# 🟥 MathOnTape
# ------------------------------
write_project "MathOnTape.php" "<?php
return [
  'title' => 'MathOnTape',
  'slug' => 'math-on-tape',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/math-on-tape/cover.jpg',
  'coverImageAlt' => 'Cassette with red label: “Modular Arithmetic Vol. 1”',
  'description' => 'An experimental music project shaped by analog synthesis and structured design.',
  'tags' => ['branding', 'music', 'aesthetic-system', 'cassette'],
  'sections' => [
    [
      'title' => 'Context / Problem',
      'text' => '<p>MathOnTape started as a personal obsession, a deep dive into the world of analog synthesis and magnetic tape. It was an intuitive creative compulsion, a need to explore sound and texture without a specific goal or audience. However, as the sonic landscape began to take shape, a parallel unshakeable need to brand emerged. This wasn’t driven by commercial intent, but by a desire to make the project feel whole.</p>'
    ],
    [
      'title' => 'Approach / Process',
      'text' => '<ul><li>Built the sonic and visual systems in parallel: dirty synths + halftone graphics</li><li>Drew from cassette futurism, fax machine aesthetics, and dot-matrix grit</li><li>Created a naming and numbering system like an archival series or postal code</li><li>Typography pulled from check scanners and magnetic ink formats (MICR)</li><li>Album art treated like a field manual or government data form</li></ul>'
    ],
    [
      'title' => 'System & Execution',
      'text' => '<ul><li>Logotype, cataloging system, and custom glyphs</li><li>Album covers, tour posters, stickers, digital wallpapers</li><li>Merch line with aesthetic restraint: halftone tees, lab-coat style jackets</li><li>SoundCloud and Bandcamp pages matched with brutalist-inspired layout</li></ul>'
    ],
    [
      'title' => 'Reflection',
      'text' => '<p>MathOnTape proved that even deeply personal experiments can carry systemic clarity. It blurred the line between output and identity. I now see branding as a mode of authorship—structuring your own obsessions into something legible, and lasting.</p>'
    ]
  ]
];
"
# ------------------------------
# Savepoint Protocol
# ------------------------------
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
      'text' => '<p>At its core, Savepoint is a timestamped markup block that captures a moment in your mental evolution. It’s designed to be machine-readable, searchable, and portable—whether you’re working in ChatGPT, NotebookLM, Markdown, or on paper.</p><p>The syntax is minimal, cold, and structural. Each block captures intent, category, function, and message in a standardized way. It’s designed to degrade gracefully—usable even without AI or software.</p>'
    ],
    [
      'title' => 'Use Cases',
      'text' => '<ul><li>Anchoring breakthroughs mid-conversation</li><li>Creating audit trails for evolving ideas</li><li>Versioning internal state during complex creative processes</li><li>Bridging AI and human authorship with clarity</li></ul>'
    ],
    [
      'title' => 'Full Spec & Repository',
      'text' => '<p>Savepoint Protocol is published as an open, lightweight system. It is rigorously documented and versioned on GitHub. You can adopt it incrementally, fork the repo, or build your own implementation layers on top.</p><p><a href=\"https://github.com/peterSalvato/Savepoint.Protocol\" target=\"_blank\">View the Savepoint Protocol repository →</a></p>'
    ]
  ]
];
"

# ------------------------------
# Order of the Ætherwright
# ------------------------------
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
      'text' => '<p><strong>The Order of the Ætherwright</strong> is a fictional philosophical order—used as a symbolic operating system for creative autonomy, systems design, and personal infrastructure. It is not a brand. It is not a cult. It is a system for sovereign cognition and aesthetic coherence.</p><p>The Order provides symbolic scaffolding to help creatives shape their practice with intentionality. It borrows from monastic orders, operating manuals, occult diagrams, and classification systems to forge a new type of creative protocol: recursive, poetic, and deeply structured.</p>'
    ],
    [
      'title' => 'Core Principles',
      'text' => '<p>The Order is built on a triadic logic. It uses dynamic symmetry, modular glyph systems, and internal doctrine to create a symbolic infrastructure for making. Everything has structure. Every artifact is a node in a broader system. Every mark, a mirror of intent.</p><p>Its principles are emergent: they evolve as the practitioner refines their path. The Order is recursive. It honors ambiguity, contradiction, and the necessity of sacred structure. It treats awareness, symbol, and form as aligned forces.</p><p>Designs created under the Order’s framework often use structural overlays—dynamic symmetry, golden ratio, or grid fragments—to maintain internal alignment with its symbolic geometry.</p>'
    ],
    [
      'title' => 'Glyph System',
      'text' => '<p>The Esoteric–Industrial Classification System defines domain glyphs, practice tiers, and systemic boundaries. Each project, field, or practitioner within the Order is marked by these symbols, which both encode and constrain meaning.</p><p>Glyphs function as both metadata and identity. They allow traversal of symbolic context—across project domains, philosophical layers, and cultural intentions.</p><p>The glyphs also track progression: from practitioner to architect, each level reveals more of the Order’s encoded logic and design discipline.</p>'
    ],
    [
      'title' => 'Explore the Codex',
      'text' => '<p>For those seeking the full framework—including doctrine, field guides, symbolic overlays, and philosophical structure—the complete archive lives in the GitHub codex.</p><p><a href=\"https://github.com/peterSalvato/order-of-the-aetherwright\" target=\"_blank\">Open the full archive →</a></p>'
    ]
  ]
];
"

echo "✅ All five explainer project files written successfully to $DEST"
