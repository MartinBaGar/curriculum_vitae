#import "@preview/flagada:1.0.1" : *

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
    grid.cell(align: right)[
        #set par(
          spacing: 6pt,
          justify: true,
        )

        #flag-fr() #phone

        #emoji.email #email

        #emoji.pin.round #address

        #for content in args.pos() {
          content
        }

    ],
)

#let skills-block(skills) = block(
    inset: (
        top: 10pt,
        rest: 20pt,
    ),
)[
    // #box(width: 1fr, line(length: 100%, stroke: luma(180)))
    #text(20pt, smallcaps[*Skills*])
    #box(width: 1fr, line(length: 100%, stroke: luma(180)))
    #for (skill, skillValue) in skills {
        // Skill title
        block(above: 32pt, below: 16pt)[
            #text(16pt, strong(skill))
        ]

        if type(skillValue) == array {
            set text(14pt)
            grid(
                columns: 2,
                gutter: 5pt,
                ..for (language, level) in skillValue {
            (
                // grid.cell(flag, align: center),
                grid.cell(language, align: left),
                grid.cell(level, align: center)
            )
        }
            )
        }

        // Skill value can be content, dictionary, or plain
        if type(skillValue) == content {
            text(14pt, skillValue)
        }
        else if type(skillValue) == dictionary {
            for (subskill, subskillValue) in skillValue {
                block(below: 15pt)[
                    // #rect(text(14pt, subskill), width: 100%, fill: red)
                    // #rect(text(14pt, subskillValue), width: 100%, stroke: none)
                // #text(14pt, emph("-" + subskill + "-")) \
                #text(14pt, [*#subskill*]) \
                #text(12pt, subskillValue)
                ]
                }
            }
        }
]

#let formation(..jobs) = grid(
    inset: (
        bottom: 5pt,
        rest: 20pt,
    ),
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            rest: 10pt,
        )
    )[
      #set text(20pt)
      #smallcaps[*Formation*]
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
              below: 18pt,
        )[
            #job.details
        ]
    }
  }
)

#let job_xp(..jobs) = grid(
    inset: (
        bottom: 5pt,
        rest: 20pt,
    ),
    grid.header(grid.cell(
        inset: (
            bottom: -10pt,
            // top: -0pt,
            rest: 10pt,
        )
      )[
          #set text(20pt)
          #smallcaps[*Professional Experience*]
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
          [
              #text(11pt)[#smallcaps[*#job.company*] - #job.role _(#job.timeframe)_ \ ]
          ]

          block(
              below: 18pt,
          )[
              #job.details
          ]
    }
  }
)

// Local Variables:
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
