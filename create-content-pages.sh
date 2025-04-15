#!/bin/bash

PAGES_DIR="Pages"
TEMPLATES_DIR="Templates"

declare -a PAGES=(
  "About"
  "Contact"
  "Signals"
  "Workshop"
  "WorkshopConceptualProjects"
  "WorkshopCaseStudies"
  "WorkshopArtifacts"
  "Systems"
)

echo "📄 Creating standard content pages..."

for name in "${PAGES[@]}"; do
  page_file="$PAGES_DIR/$name.php"
  template_file="$TEMPLATES_DIR/$name.php"

  if [ ! -f "$page_file" ]; then
    cat > "$page_file" <<PHP
<?php
return [
    'view' => '$name',
    'data' => [
        'title' => '$name'
    ]
];
PHP
    echo "✅ Created: $page_file"
  fi

  if [ ! -f "$template_file" ]; then
    cat > "$template_file" <<HTML
<p>This is the <strong>$name</strong> page. Real content coming soon.</p>
HTML
    echo "✅ Created: $template_file"
  fi
done

# Special system route using slug
page_file="$PAGES_DIR/System.php"
template_file="$TEMPLATES_DIR/SystemTemplate.php"

if [ ! -f "$page_file" ]; then
  cat > "$page_file" <<PHP
<?php

\$slug = \$_GET['slug'] ?? '';
\$path = __DIR__ . '/../Data/Systems/' . \$slug . '/Data.php';

if (!file_exists(\$path)) {
    http_response_code(404);
    echo "System not found.";
    return null;
}

\$data = require \$path;

return [
    'view' => 'SystemTemplate',
    'data' => \$data + ['title' => \$data['title'] ?? 'System']
];
PHP
  echo "✅ Created: $page_file"
fi

if [ ! -f "$template_file" ]; then
  cat > "$template_file" <<HTML
<h2><?= htmlspecialchars(\$title ?? 'Untitled System') ?></h2>
<p>System content coming soon.</p>
HTML
  echo "✅ Created: $template_file"
fi

echo ""
echo "🏁 All content pages scaffolded."
