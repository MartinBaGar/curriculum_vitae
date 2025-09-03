#import "@preview/flagada:1.0.1" : *

#set page(
    margin: 0%
)

#set text(
    12pt,
    font: ("Times New Roman"),
)

#let personnal_info(name, age, phone, email, address) = grid(
    // inset: 0pt,
    columns: (1fr, 1fr),
    grid.cell(align: left)[
        #set par(
          spacing: 12pt,
          justify: true,
        )
        #set text(20pt, weight: "extrabold")

        #name

        #age years old
    ],
    grid.cell(align: right)[
        #set par(
          spacing: 6pt,
          justify: true,
        )

        #flag-fr() #phone

        #emoji.email #email

        #emoji.pin.round #address
    ],
)

#let skills-block(skills) = block[
  #text(20pt, strong("Skills"))

  #for (skill, skillValue) in skills {
    // Skill title
    block(spacing: 16pt)[
      #text(16pt, strong(skill))
    ]

    // Skill value can be content, dictionary, or plain
    if type(skillValue) == content {
        text(12pt, skillValue)
    }
    else if type(skillValue) == dictionary {
      for (subskill, subskillValue) in skillValue {
        block(spacing: 12pt)[
          #text(14pt, emph("-" + subskill + "-")) \
          #text(12pt, subskillValue)
        ]
      }
    }
  }
]

#let formation(..jobs) = grid(
  inset: 20pt,
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            rest: 10pt,
        )
    )[
      #set text(20pt)
      *Formation*
      #box(width: 1fr,
          line(length: 100%, stroke: luma(180)))
  ]),
  {
    for job in jobs.pos() {
        [
          #set par(
            spacing: 4pt,
            justify: true,
          )
          *#job.diploma* - #job.institution _(#job.timeframe)_ \
          #emph(job.feeling) \

            #par(
                job.details,
                spacing: 10pt,
            )
          
        ]
    }
  }
)

#let job_xp(..jobs) = grid(
  inset: 20pt,
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            rest: 10pt,
        )
      )[
          #box(width: 1fr, line(length: 100%, stroke: luma(180)))
          #set text(20pt)
          *Professional Experience*]
  ),
  {
    for job in jobs.pos() {
        align(right)[
          *#job.company* - #job.role _(#job.timeframe)_ \
          #job.details
        ]
    }
  }
)

// Page content
#grid(
  rows: (0.2fr, 1fr),
    // Heading box
    grid(
        columns: (auto, auto),
        stroke: (bottom : blue + 5pt, rest: none),
        align: horizon,
        rect(
            stroke: none,
            // inset: 15pt,
        )[
            #image("chimpanzee_tongue_out.png")
        ],
        rect(
            // inset: (
            //     left: 20pt,
            //     right: 30pt
            // ),
            stroke: none, width: 100%)[
                #personnal_info(
                [Martin Bari Garnier],
                [26],
                [+33 6 52 63 21 07],
                [#link("mailto:martbari.g@gmail.com")],
                [#link("https://www.google.com/maps/place/48+Rue+des+Vinaigriers,+75010+Paris")[
                        48 rue des Vinaigriers, 75010 Paris
                    ]],
                )],
    ),
    // Content box
    grid(
        columns: (1fr, 4fr),
        rows: (1fr),
        // Skills box
        grid.cell(
            align: center + horizon,
            // inset: (
            //     top: 20pt,
            //     left: 20pt,
            //     right: 20pt
            // ),
            stroke: (
                right: blue + 5pt,
            )
        )[
            #skills-block(
                (
                    (emoji.computer + " Informatique"): (
                        programmation: [R Python Unix],
                        images: [GIMP, Inkscape]
                    ),
                    Langues: [
                        #flag-us() Anglais C1 \
                        #flag-es() Espagnol B2 \
                        #flag-fr() Français natif\
                    ],
                    (emoji.notes + " Musique"): [
                        #emoji.drum Batteur depuis 2011 \
                        Interprète - Compositeur
                    ],
                ),
            )
        ],
        // Pro box
        grid.cell(
            // inset: 15pt,
        )[
            #formation(
                (
                    diploma: [Master Bio-informatique : _In Silico Drug Design_],
                    institution: [Université Paris-Cité],
                    timeframe: [2023-2025],
                    feeling: [L’informatique: l’approche qui me stimule],
                    details: [Modélisation de macromolécules et Dynamique Moléculaire, Analyse de données en Drug Design, Criblage haut-débit, Docking],
                ),

                (
                    diploma: [Master Chimie, Biologie et Médicament],
                    institution: [Université de Strasbourg],
                    timeframe: [2021-2023],
                    feeling: [Renforcer mes compétences dans l’environnement qui me correspond],
                    details: [Stratégie de synthèse en chimie organique pour des biomolécules, Biologie chimique, Ingénierie des protéines, Chémoinformatique, Drug Design],
                ),

                (
                    diploma: [Licence Chimie-Biologie],
                    institution: [Université Paris-Saclay],
                    timeframe: [2019-2021],
                    feeling: [Une application de la chimie dans un domaine qui m’intéresse],
                    details: [Chimie organique, bioorganique, bioinorganique, analytique et du médicament, Biologie moléculaire, cellulaire et du développement, Biochimie membranaire, du métabolisme],
                ),

                (
                    diploma: [DUT Chimie],
                    institution: [Université Paris-Est Créteil],
                    timeframe: [2017-2019],
                    feeling: [Ma première approche de la chimie],
                    details: [Chimie générale, de synthèse (minérale et organique) et analytique, génie chimique],
                ),
            )

            #job_xp(
                (
                    company: [Laboratoire de Biologie Théorique],
                    role: [Lead Engineer],
                    timeframe: [Jan - Juil 2025],
                    details: [
                        - Raised engineers from 3x to 10x
                        - Did a great job
                    ],
                ),
                (
                    company: [Biovia - Dassault Systèmes],
                    role: [],
                    timeframe: [Mai-Juin 2024],
                    details: [
                        Développement d'un workflow intégrant l’IA pour la conception de ligands
                        Génération de ligands (PMDM, PocketFlow), Evaluation de leur vraisemblance (PosesBuster), Docking (GOLD, Quick Vina 2), Analyse des interactions (Discovery Studio)
                    ],
                ),
                (
                    company: [Laboratoire d’Innovation Thérapeutique],
                    role: [],
                    timeframe: [Janvier-Juin 2023],
                    details: [
                        Modélisation des état conformationnels du corécepteur de HIV-1
                        en relation avec le tropisme viral R5 et R5X4
                        Simulation par Dynamique Moléculaire
                        et Analyse avec la suite Amber
                    ],
                ),
                (
                    company: [Department of Immunology of the Okayama University],
                    role: [],
                    timeframe: [Avril-Août 2022],
                    details: [
                        Analyse de la base de données « The Cancer Genome Atlas » avec R \
                        Caractérisation de l’expression de différentes protéines
                    ],
                ),
                (
                    company: [Federal University of Pernambouco],
                    role: [],
                    timeframe: [Avril-Juin 2019],
                    details: [
                        Synthèse et caractérisation de nanoparticules d’argent à effet larvicide \
                        Test d’efficacité des nanoparticules d’argent
                    ],
                )
            )
        ],
        )
    // rect(height: 100%, stroke: (right : blue + 5pt, rest: none))[
    // #image("chimpanzee_tongue_out.png", width: 100%)
    //     #align(center,
    //     rect[
    //             *COMPÉTENCES*

    //             *Langues*

    //             Anglais C1 Espagnol B2

    //             *Informatique*

    //             -programmation- R Python Unix

    //             -modélisation et dynamique moléculaire- GROMACS, Amber MD, MOE Pymol,  VMD Blender

    //             -docking- Suite AutoDock, HADDOCK

    //             -images- GIMP Inkscape

    //             -musique- FL Studio Guitar Pro

    //             *Musique*

    //             Batteur depuis 2011 Interprète-compositeur
    //         ]
    //     )
    // ],
    // rect[
    // #image("chimpanzee_tongue_out.png", width: 100pt, height: 20%),
    // ]
)


// Local Variables:
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
