<?php

return [
  'Home' => '?page=Home',
  'About' => '?page=About',
  'Contact' => '?page=Contact',
  
  'Workshop' => [
    'url' => '?page=Workshop',
    'children' => [
      'Conceptual Projects' => [
        'url' => '?page=WorkshopConceptualProjects',
        'children' => [
          'Photogeography' => '?page=Project&slug=ConceptualProjects/Photogeography',
          'Versograms'     => '?page=Project&slug=ConceptualProjects/Versograms'
        ]
      ],
      'Case Studies' => [
        'url' => '?page=WorkshopCaseStudies',
        'children' => [
          'Aiden Jae'  => '?page=Project&slug=CaseStudies/AidenJae',
          'Altrueism'  => '?page=Project&slug=CaseStudies/Altrueism',
          'MathOnTape' => '?page=Project&slug=CaseStudies/MathOnTape'
        ]
      ],
      'Artifacts' => [
        'url' => '?page=WorkshopArtifacts',
        'children' => [
          'The Deep Cuts' => '?page=Project&slug=Artifacts/TheDeepCuts',
          'Echo & Stone' => '?page=Project&slug=Artifacts/EchoAndBone'
        ]
      ]
    ]
  ],

  'Systems' => [
    'url' => '?page=Systems',
    'children' => [
      'Savepoint Protocol' => '?page=System&slug=SavepointProtocol',
      'The Order of<br><span>the Ætherwright</span>' => '?page=System&slug=TheOrderOfTheAetherwright'
    ]
  ],

  'Journal' => '?page=Journal',
  'Signals' => '?page=Signals'
];
