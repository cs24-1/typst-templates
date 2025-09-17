// contains root configuration as well as the cover page
#let frontmatter(
  institution-override: "Duale Hochschule Sachsen",
  title: "NO TITLE SET",
  author: (
    name: "NO AUTHOR SET",
    id: "NO ID SET",
    address: "NO ADDRESS SET",
    seminar-group: "NO SEMINAR GROUP SET",
  ),
  field: "NO FIELD SET",
  module-abbrev: "NO MODULE SET",
  date: datetime.today(),
  place: "Musterhausen",
  doc,
) = {
  set page(
    paper: "a4",
    margin: (
      left: 40mm,
      top: 20mm,
      right: 20mm,
      bottom: 20mm,
    ),
  )
  set text(
    lang: "de",
    size: 12pt,
  )
  set par(leading: 0.75em, justify: true)
  set bibliography(style: "iso-690-author-date", title: "Literaturverzeichnis")
  show footnote.entry: it => {
    set text(size: 10pt)
    it
  }
  set heading(
    numbering: "1.1",
  )


  set page(numbering: none)
  set align(center)
  text(17pt, institution-override)
  // parbreak()
  v(50pt)
  text(17pt, title)
  v(20pt)
  text()[
    Projektarbeit

    im Studiengang #field

    #module-abbrev
  ]
  v(50pt)

  grid(
    columns: (1fr, 2fr),
    row-gutter: 24pt,
    align: left,
    [Eingereicht von:],
    [
      #text(author.name) \
      #text(author.address) \
      #text(author.seminar-group) \
      #text(author.id) \
    ],
  )

  set align(bottom + left)
  text(place + ", " + date.display("[day].[month].[year]"))

  set align(top)
  pagebreak()

  doc
}

#let my-outline(doc) = {
  set page(numbering: "I")
  set outline(
    depth: 3,
  )
  outline()
  doc
}

#let main(doc) = {
  set page(numbering: "1")
  doc
}

#let appendix(doc) = {
  set page(numbering: "I")
  doc
}

