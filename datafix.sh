mkdir -p Data/Systems/SavepointProtocol
mkdir -p Data/Systems/TheOrderOfTheAetherwright

cat > Data/Systems/SavepointProtocol/Data.php <<PHP
<?php
return [
  'title' => 'Savepoint Protocol',
  'description' => 'A design pattern for restoring creative state.',
  'tags' => ['design', 'system']
];
PHP

cat > Data/Systems/TheOrderOfTheAetherwright/Data.php <<PHP
<?php
return [
  'title' => 'The Order of the Ætherwright',
  'description' => 'A philosophical framework for engineering meaning.',
  'tags' => ['philosophy', 'system']
];
PHP
