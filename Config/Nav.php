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
        'attrs' => ' id="" class="conceptualProjects workgroup"',
        'children' => [
          'Photogeography' => '?page=Project&slug=ConceptualProjects/Photogeography',
          'Versograms'     => '?page=Project&slug=ConceptualProjects/Versograms'
        ]
      ],
      'Case Studies' => [
        'url' => '?page=WorkshopCaseStudies',
        'attrs' => ' id=""class="caseStudies workgroup"',
        'children' => [
          'Aiden Jae'  => '?page=Project&slug=CaseStudies/AidenJae',
          'Altrueism'  => '?page=Project&slug=CaseStudies/Altrueism',
          'MathOnTape' => '?page=Project&slug=CaseStudies/MathOnTape'
        ]
      ],
      'Artifacts' => [
        'url' => '?page=WorkshopArtifacts',
        'attrs' => ' id="nav-" class="conceptualProjects workgroup" ',
        'children' => [
          'The Deep Cuts' => '?page=Project&slug=Artifacts/TheDeepCuts',
          'Echo & Bone' => '?page=Project&slug=Artifacts/EchoAndBone'
        ]
      ]
    ]
  ],

  'Systems' => [
    'url' => '?page=Systems',
    'attrs' => ' id="" class="systems workgroup" ',
    'children' => [
      'Savepoint.Protocol' => '?page=System&slug=SavepointProtocol',
      'The Order of<br>the Ætherwright' => '?page=System&slug=TheOrderOfTheAetherwright'
    ]
  ],

  'Journal' => '?page=Journal',
  'Signals' => '?page=Signals'
];
