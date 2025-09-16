#import "cv_bagar.typ" : *
#import "@preview/fontawesome:0.6.0" : *
#show: cv_bagar.with(
)

#grid(
  rows: (1fr, 6fr),
    // Heading box
    grid(
        columns: (auto, auto),
        stroke: (bottom : black + 2pt, rest: none),
        align: horizon,
        inset: 15pt,
        image("chimpanzee_tongue_out.png"),
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
                    (
                        (fa-github(), [#link("https://github.com/MartinBaGar")[
                        MartinBaGar
                        ]])
                    ),
                )],
    ),

    // Content box
    grid(
        columns: (1.5fr, 4fr),
        rows: (auto, 1fr),
        // Skills box
        grid.cell(
            rowspan: 2,
            align: left,
            stroke: (
                right: black + 2pt,
            )
        )[
            #skills-block(
                (
                    informatique: (
                        icon: fa-computer(),
                        title: "Informatique",
                        skills: (
                            Programmation: [Python, R, Unix],
                            "Dynamique moléculaire": [GROMACS, Amber MD],
                            Visualisation: [VMD, PyMOL, MOE, Blender],
                            Docking: [Suite AutoDock / Vina, HADDOCK, GOLD],
                            Images: [GIMP, Inkscape],
                            Musique: [FL Studio, Guitar Pro]
                        )
                    ),
                    langues: (
                        icon: fa-language(),
                        title: "Langues",
                        skills: (
                            ("Anglais", "C1"),
                            ("Espagnol", "B2"),
                        )
                    ),
                    musique: (
                        icon: fa-music(),
                        title: "Musique",
                        skills: [
                            Batteur depuis 2011 \
                            Interprète et compositeur au sein de groupes de Metal
                            // Add more music content here
                        ]
                    ),
                )
            )
        ],
        // Pro box
        grid.cell(
            // inset: 15pt,
        )[
            #job_xp(
                (
                    company: [Laboratoire de Biologie Théorique],
                    role: [Stage],
                    timeframe: [Jan - Juil 2025],
                    details: [
                        Simulations de dynamique moléculaire pour l’étude de mécanismes d’activation enzymatique \
                        Mise en œuvre de techniques d’échantillonnage accru (REST2) et d’analyses de contacts et de clustering pour caractériser les transitions conformationnelles ],
                    ),
                (
                    company: [Biovia - Dassault Systèmes],
                    role: [Stage],
                    timeframe: [Mai-Juin 2024],
                    details: [
                        Développement d'un flux de travail intégrant l’IA pour la conception de ligands :
                        Génération de ligands > Evaluation de leur vraisemblance > Docking > Analyse des interactions
                    ],
                ),
                (
                    company: [Laboratoire d’Innovation Thérapeutique],
                    role: [Stage],
                    timeframe: [Janvier-Juin 2023],
                    details: [
                        Modélisation des état conformationnels du corécepteur de HIV-1
                        en relation avec le tropisme viral R5 et R5X4 \
                        Simulation par Dynamique Moléculaire
                        et Analyse avec la suite Amber
                    ],
                ),
                (
                    company: [Department of Immunology of the Okayama University],
                    role: [Stage],
                    timeframe: [Avril-Août 2022],
                    details: [
                        Analyse de la base de données « The Cancer Genome Atlas » avec R \
                        Caractérisation de l’expression de différentes protéines
                    ],
                ),
                (
                    company: [Federal University of Pernambouco],
                    role: [Stage],
                    timeframe: [Avril-Juin 2019],
                    details: [
                        Synthèse et caractérisation de nanoparticules d’argent à effet larvicide \
                        Test d’efficacité des nanoparticules d’argent
                    ],
                )
            )
            #v(1fr)
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
                    details: [Stratégie de synthèse en chimie organique pour des biomolécules \
                            Biologie chimique, Ingénierie des protéines, Chémoinformatique, Drug Design],
                ),

                (
                    diploma: [Licence Chimie-Biologie],
                    institution: [Université Paris-Saclay],
                    timeframe: [2019-2021],
                    feeling: [Une application de la chimie dans un domaine qui m’intéresse],
                    details: [Chimie organique, bioorganique, bioinorganique, analytique et du médicament \
                        Biologie moléculaire, cellulaire et du développement \
                        Biochimie membranaire, du métabolisme],
                ),

                (
                    diploma: [DUT Chimie],
                    institution: [Université Paris-Est Créteil],
                    timeframe: [2017-2019],
                    feeling: [Ma première approche de la chimie],
                    details: [Chimie générale, de synthèse (minérale et organique) et analytique, génie chimique],
                ),
            )
            #v(1fr)
        ],
        )
)

// Local Variables:
// jinx-languages: "fr"
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
