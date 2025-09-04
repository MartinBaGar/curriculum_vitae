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

#let skills-block(skills) = block(
    inset: 10pt,
)[
    #box(width: 1fr, line(length: 100%, stroke: luma(180)))
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
                columns: 3,
                gutter: 10pt,
                ..for (flag, language, level) in skillValue {
            (
                grid.cell(flag, align: center),
                grid.cell(language, align: center),
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
  inset: 20pt,
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
                spacing: 12pt,
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
          #set text(20pt)
          #smallcaps[*Professional Experience*]
          #box(width: 1fr, line(length: 100%, stroke: luma(180)))
      ]
  ),
  {
    for job in jobs.pos() {
        align(left)[
          *#job.company* - #job.role _(#job.timeframe)_ \
          #job.details
        ]
    }
  }
)

// Local Variables:
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
