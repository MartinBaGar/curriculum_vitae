#set page(
    margin: 0%
)
#set rect(
  fill: rgb("e4e5ea"),
  inset: 1em,
)

#grid(
  columns: (0.2fr, 1fr),
  // rows: (auto, 1fr),
  // First column with 2 rows
  stack(
    image("chimpanzee_tongue_out.png", width: 100pt, height: 20%),
      align(center,
          rect(inset: 10pt, width:100%, height: 80%, fill: red)[Skills])
  ),
  // Second column with 3 rows
  stack(
    rect(width: 100%, height: 16%, fill: blue)[Martin Bari Garnier],
    rect(width: 100%, height: 42%, fill: green)[Martin Bari Garnier],
    rect(width: 100%, height: 42%, fill: yellow)[Martin Bari Garnier],
  )
)

// #place(
// top + left,
// scope: "parent",
// float: true,
// dx: 0mm,
// dy: 10mm,
// figure(
// image("chimpanzee_tongue_out.png", width: 40mm),
// numbering: none
// )
// )

// Local Variables:
// tp--master-file: "/home/mabagar/docs/curriculum_vitae/curriculum_vitae.typ"
// End:
