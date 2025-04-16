#!/bin/bash

# Define destination
DEST="./Data/Projects"
mkdir -p "$DEST"
echo "🛠 Writing PascalCase project files to $DEST..."

# Helper: write PHP file
write_project() {
  FILENAME=$1
  CONTENT=$2
  FILE="$DEST/$FILENAME"
  echo "Creating: $FILE"
  cat <<EOF > "$FILE"
$CONTENT
EOF
}

# -- GALLERY PROJECTS --

write_project "EchoAndBone.php" "<?php
return [
  'title' => 'Echo & Bone',
  'slug' => 'echo-and-bone',
  'layout' => 'gallery',
  'coverImage' => '/assets/images/projects/echo-and-bone/cover.jpg',
  'coverImageAlt' => 'Illustrated skull poster reading \"Memento Mori\" with aged halftone effect.',
  'description' => 'A Stoic triptych of mortality and meaning through halftone animal skulls.',
  'tags' => ['poster', 'philosophy', 'stoicism', 'halftone', 'procreate'],
  'content' => <<<HTML
<p><strong>Echo & Bone</strong> is a visual triptych exploring the Stoic principles of <em>Amor Fati</em>, <em>Memento Mori</em>, and <em>Summum Bonum</em>.</p>
<p>Created in Procreate using custom halftone brushes, the series mimics the texture and tone of vintage PSA posters—bleached by time, but still resonant. The typography is Swiss-influenced, typeset with restraint and clarity.</p>
<p>Rather than treating Stoicism as cold or detached, this series invites a softer reading: death as a mirror for clarity, love of fate as participation, and virtue as design.</p>
HTML,
  'images' => []
];
"

write_project "TheDeepCuts.php" "<?php
return [
  'title' => 'The Deep Cuts',
  'slug' => 'the-deep-cuts',
  'layout' => 'gallery',
  'coverImage' => '/assets/images/projects/the-deep-cuts/cover.jpg',
  'coverImageAlt' => 'DJ mixer sketched with waveform overlay.',
  'description' => 'A technical and emotional guide to personal DJing and deep musical connection.',
  'tags' => ['djing', 'audio', 'pedagogy', 'listening'],
  'content' => <<<HTML
<p><strong>The Deep Cuts</strong> is a DJing philosophy guide disguised as a technical manual. Structured as a modular curriculum, it teaches mixing, phrasing, harmonic blending, and energy control—not for clubs, but for personal connection.</p>
<p>This is a guide for people who make mixes the way others write letters.</p>
HTML,
  'images' => []
];
"

write_project "Photogeography.php" "<?php
return [
  'title' => 'Photogeography',
  'slug' => 'photogeography',
  'layout' => 'gallery',
  'coverImage' => '/assets/images/projects/photogeography/cover.jpg',
  'coverImageAlt' => '35mm contact sheet of landscape photos.',
  'description' => 'Mapping emotion, atmosphere, and landscape through analog photography.',
  'tags' => ['photography', '35mm', 'place', 'emotion'],
  'content' => <<<HTML
<p><strong>Photogeography</strong> uses 35mm analog photography to document place, memory, and feeling. Each image is a map—not of roads, but of atmosphere.</p>
<p>The work embraces light leaks, blur, and grain as evidence of presence. It reflects the land as felt, not just seen.</p>
HTML,
  'images' => []
];
"

write_project "Versograms.php" "<?php
return [
  'title' => 'Versograms',
  'slug' => 'versograms',
  'layout' => 'gallery',
  'coverImage' => '/assets/images/projects/versograms/cover.jpg',
  'coverImageAlt' => 'Polaroid-style lyric poster with typographic grid.',
  'description' => 'Typographic posters built from song lyrics and visual rhythm.',
  'tags' => ['typography', 'music', 'lyrics', 'polaroid'],
  'content' => <<<HTML
<p><strong>Versograms</strong> are lyric posters designed like Polaroids—each one a frozen moment of sound. Built on Swiss grid principles with dynamic type treatments, each print honors a single track that shaped the artist’s emotional life.</p>
<p>Posters are designed in vertical SX-70 format and printed using textured halftones and restrained palettes.</p>
HTML,
  'images' => []
];
"

# -- EXPLAINER PROJECTS --

write_project "OrderOfTheAetherwright.php" "<?php
return [
  'title' => 'The Order of the Ætherwright',
  'slug' => 'order-of-the-aetherwright',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/order-of-the-aetherwright/cover.jpg',
  'coverImageAlt' => 'Symbolic sigil of the Order of the Ætherwright overlaid on textured paper.',
  'description' => 'A fictional order, real system: symbolic infrastructure for sovereign creative work.',
  'tags' => ['systems', 'symbolism', 'philosophy', 'classification', 'aetherwright'],
  'sections' => []
];
"

write_project "SavepointProtocol.php" "<?php
return [
  'title' => 'Savepoint Protocol',
  'slug' => 'savepoint-protocol',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/savepoint-protocol/cover.jpg',
  'coverImageAlt' => 'Screenshot of a timestamped savepoint code block on a dark terminal interface.',
  'description' => 'A cognitive protocol for anchoring thought. Version control for your brain.',
  'tags' => ['protocol', 'workflow', 'cognition', 'documentation', 'markup'],
  'sections' => []
];
"

write_project "AidenJae.php" "<?php
return [
  'title' => 'Aiden Jae',
  'slug' => 'aiden-jae',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/aiden-jae/cover.jpg',
  'coverImageAlt' => 'Clean typographic logomark for Aiden Jae over black.',
  'description' => 'Case study on personal brand strategy and identity architecture.',
  'tags' => ['branding', 'identity', 'fashion', 'naming'],
  'sections' => []
];
"

write_project "Altrueism.php" "<?php
return [
  'title' => 'Altrueism',
  'slug' => 'altrueism',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/altrueism/cover.jpg',
  'coverImageAlt' => 'Minimalist fashion editorial with overlayed brand glyph.',
  'description' => 'Design system for ethical fashion and semiotic sustainability.',
  'tags' => ['systems', 'fashion', 'symbolism', 'editorial'],
  'sections' => []
];
"

write_project "MathOnTape.php" "<?php
return [
  'title' => 'MathOnTape',
  'slug' => 'math-on-tape',
  'layout' => 'explainer',
  'coverImage' => '/assets/images/projects/math-on-tape/cover.jpg',
  'coverImageAlt' => 'Cassette tape with handwritten label: “Modular Arithmetic Vol. 1”',
  'description' => 'Creative logic system using cassette tapes to teach math.',
  'tags' => ['education', 'math', 'modularity', 'format'],
  'sections' => []
];
"

echo "✅ All PascalCase project files created in $DEST"
