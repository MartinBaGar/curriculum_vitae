#import "@preview/flagada:1.0.1" : *
#import "@preview/fontawesome:0.6.0" : *

#let cv_bagar(
        doc
    ) = {
        set page(
                margin: 0%
            )

        set text(
            12pt,
            font: ("Times New Roman"),
        )
        doc
    }

#let personnal_info(name, age, phone, email, address, ..args) = grid(
    // inset: 0pt,
    columns: (1fr, 1fr),
    grid.cell(align: left)[
        #set par(
          spacing: 12pt,
          justify: true,
        )
        #set text(20pt, weight: "extrabold")

        #name

        #age ans
    ],
        grid.cell(align: left)[
            #set par(justify: true)
            #let entries = (
                (fa-phone(), phone),
                (fa-envelope(), email),
                (fa-location-dot(), address)
            ) + args.pos()

            #grid(
                columns: 2,
                column-gutter: 10pt,
                row-gutter: 0pt,
                ..for (icon, text) in entries {
                    (
                        grid.cell(align: right)[#text],
                        grid.cell(align: center)[#box(baseline: -3pt)[#icon]],
                    )
                }
            )
        ],
)

#let skills-block(skills) = grid(
    // rows: (auto, 1fr),
    // row-gutter: -30pt,
    grid.header(grid.cell(
        inset: (
            rest: 10pt,
            bottom: 0pt,
        )
      )[
          #text(18pt)[#smallcaps[*Compétences*]]
          #box(width: 1fr, line(length: 100%, stroke: luma(180)))
      ]
    ),
    grid.cell(
    inset: (
        rest: 20pt,
    ),
    {
        let skills_count = skills.len()
        let skills_counter = 0
        for (skill-key, skill-data) in skills {
            v(1fr)
            skills_counter += 1
            // [#skills_counter]
            let display-title = if "icon" in skill-data and "title" in skill-data {
                skill-data.icon + "  " + skill-data.title
            } else if "title" in skill-data {
                skill-data.title
            } else {
                skill-key  // fallback to key name
            }

            // Skill title
            block(above: 32pt, below: 16pt)[
                #text(16pt, strong(display-title))
            ]

            // Get the actual skills content
            let skill-content = if "skills" in skill-data {
                skill-data.skills
            } else {
                skill-data  // fallback for backwards compatibility
            }

            // Handle different types of skill content
            if type(skill-content) == array {
                set text(14pt)
                grid(
                    columns: 2,
                    gutter: 5pt,
                    ..for (language, level) in skill-content {
                        (
                            grid.cell(language, align: left),
                            grid.cell(level, align: center)
                        )
                    }
                )
            }
            else if type(skill-content) == content {
                text(14pt, skill-content)
            }
            else if type(skill-content) == dictionary {
                for (subskill, subskillValue) in skill-content {
                    block()[
                        #text(14pt, [*#subskill*]) \
                        #text(12pt, subskillValue)
                    ]
                }
            }
            if skills_counter == skills_count {
                v(1fr)
                v(18pt) // Size of the header without its inset
            } else {
                v(1fr)
            }
        }
    }
    ),
)

#let formation(..jobs) = grid(
    inset: (
        rest: 20pt,
    ),
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            rest: 10pt,
        )
    )[
      #text(18pt)[#smallcaps[*Formation*]]
      #box(width: 1fr,
          line(length: 100%, stroke: luma(180)))
  ]),
  {
    set par(
        justify: true,
        leading: 6pt,
        spacing: 10pt,
    )

    for job in jobs.pos() {
        block(
            below: 4pt,
        )[
            #text(11pt)[#smallcaps()[*#job.diploma*]] -
            #text(10pt)[#job.institution _(#job.timeframe)_ \ ]
        ]

        text(10pt)[#emph(job.feeling) \ ]

        block(
              below: 15pt,
        )[
            #job.details
        ]
    }
  }
)

#let job_xp(..jobs) = grid(
    inset: (
        rest: 20pt,
    ),
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            // top: -0pt,
            rest: 10pt,
        )
      )[
          #text(18pt)[#smallcaps[*Expériences Professionnelles*]]
          #box(width: 1fr, line(length: 100%, stroke: luma(180)))
      ]
  ),
  {
    set par(
        justify: true,
        leading: 6pt,
        spacing: 10pt,
    )

      for job in jobs.pos() {
          block(
              below: 4pt,
          )[
              #text(11pt)[#smallcaps[*#job.company*] - _(#job.timeframe)_ \ ]
          ]
          text(10pt)[#emph(job.role)]
          block(
              below: 15pt,
          )[
              #job.details
          ]
    }
  }
)

// Local Variables:
// jinx-languages: "fr"
// End:
