#set page(
    margin: 0%
)
#set rect(
  fill: rgb("e4e5ea"),
  inset: 10pt,
)

#grid(
  columns: (0.2fr, 1fr),
  stack(
    image("chimpanzee_tongue_out.png", width: 100pt, height: 20%),
    align(center,
        rect(width:100%, height: 80%, fill: red)[
            *COMPÉTENCES*
*Langues*

Anglais C1
Espagnol B2

*Informatique*

-programmation-
R
Python
Unix

-modélisation et dynamique moléculaire-
GROMACS, Amber MD, MOE
Pymol,  VMD
Blender

-docking-
Suite AutoDock, HADDOCK

-images-
GIMP
Inkscape

-musique-
FL Studio
Guitar Pro

*Musique*

Batteur depuis 2011
Interprète-compositeur
        ])
  ),
  stack(
      stack(
     //      #set dir=ltr,
     //      rect(width: 50%, height: 16%, fill: blue)[
     // Martin Bari Garnier
     //          25 ans ],
     //  ),
          rect(width: 50%, height: 16%, fill: blue)[
     Martin Bari Garnier
              25 ans ],
      ),
    // align(right,
    //     rect(width: 50%, height: 42%, fill: yellow)[Martin Bari Garnier]),
      rect(width: 100%, height: 42%, fill: green)[
FORMATION

DUT Chimie – Université Paris-Est Créteil – 2017-2019
Ma première approche de la chimie
Chimie générale, de synthèse (minérale et organique) et analytique, génie chimique

Licence Chimie-Biologie – Université Paris-Saclay – 2019-2021
Une application de la chimie dans un domaine qui m’intéresse

Chimie organique, bioorganique, bioinorganique, analytique et du médicament
Biologie moléculaire, cellulaire et du développement
Biochimie membranaire, du métabolisme

Master Chimie, Biologie et Médicament – Université de Strasbourg – 2021-2023
Renforcer mes compétences dans l’environnement qui me correspond

Stratégie de synthèse en chimie organique pour des biomolécules
Biologie chimique, Ingénierie des protéines
Chémoinformatique, Drug Design

Master Bio-informatique : In Silico Drug Design – Université Paris-Cité – 2023-2025
L’informatique: l’approche qui me stimule

Modélisation de macromolécules et Dynamique Moléculaire
Analyse de données en Drug Design
Criblage haut-débit
Docking
      ],
    align(right,
        rect(width: 100%, height: 42%, fill: yellow)[
            EXPERIENCE PROFESSIONNELLE

Biovia - Dassault Systèmes, Paris – Mai-Juin 2024
Développement d'un workflow intégrant l’IA pour la conception de ligands :
Génération de ligands (PMDM, PocketFlow), Evaluation de leur vraisemblance (PosesBuster), Docking (GOLD, Quick Vina 2), Analyse des interactions (Discovery Studio)

Laboratoire d’Innovation Thérapeutique, Strasbourg – Janvier-Juin 2023
Modélisation des état conformationnels du corécepteur de HIV-1
en relation avec le tropisme viral R5 et R5X4
Simulation par Dynamique Moléculaire
et Analyse avec la suite Amber

Department of Immunology of the Okayama University, Japon – Avril-Août 2022
Analyse de la base de données « The Cancer Genome Atlas » avec R
Caractérisation de l’expression de différentes protéines

Federal University of Pernambouco, Brésil – Avril-Juin 2019
Synthèse et caractérisation de nanoparticules d’argent à effet larvicide
            Test d’efficacité des nanoparticules d’argent
        ])
  )
)


// Local Variables:
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
