#let conf(
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
  set text(lang: "de")


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
