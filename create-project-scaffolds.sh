#!/bin/bash

echo "📦 Creating missing project folders..."

declare -A PROJECTS

PROJECTS["Artifacts/TheDeepCuts"]="The Deep Cuts"
PROJECTS["CaseStudies/AidenJae"]="Aiden Jae"
PROJECTS["CaseStudies/MathOnTape"]="Math On Tape"
PROJECTS["ConceptualProjects/Photogeography"]="Photogeography"
PROJECTS["ConceptualProjects/Versograms"]="Versograms"

for path in "${!PROJECTS[@]}"; do
  dir="Data/Projects/$path"
  file="$dir/Data.php"
  title="${PROJECTS[$path]}"

  if [ ! -f "$file" ]; then
    mkdir -p "$dir"
    cat > "$file" <<PHP
<?php
return [
  'title' => '$title',
  'description' => 'Description for $title goes here.',
  'gallery' => [],
  'tags' => []
];
PHP
    echo "✅ Created: $file"
  else
    echo "⏭️  Skipped (already exists): $file"
  fi
done

echo "🏁 Project scaffolds created."
