#let authorship(
  author: "NO AUTHOR SET",
  place: "NO PLACE SET",
) = {
  set heading(numbering: none)
  text[= Selbstständigkeitserklärung

    Ich versichere, dass ich die vorliegende Arbeit ohne fremde Hilfe selbständig verfasst und nur die angegebenen Quellen und Hilfsmittel benutzt habe. Wörtlich oder dem Sinn nach aus anderen Werken entnommene Stellen sind unter Angabe der Quellen kenntlich gemacht. Bestandteile der Arbeit, die mittels Künstlicher Intelligenz entstanden sind, wurden ausdrücklich gekennzeichnet. Die Arbeit wurde bisher in gleicher oder ähnlicher Form weder veröffentlicht noch einer anderen Prüfungsbehörde vorgelegt.
  ]
  set align(bottom)
  grid(
    columns: (1fr, 1fr),
    align(left)[#place, #text(datetime.today().display("[day].[month].[year]"))],
    align(right)[#line(length: 120pt) #author],
  )
  set heading(numbering: "1.1")
}

#let wissenschaftliche_arbeit(
  institution: "Duale Hochschule Sachsen",
  work-type: "Wissenschaftliche Arbeit",
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
  outline-depth: 3,
  include-outline: true,
  appendix: none,
  body,
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
  text(17pt, institution)
  v(50pt)
  text(17pt, title)
  v(20pt)
  text()[
    #work-type

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

  let roman-pages = counter("wissenschaftliche-arbeit-roman-pages")
  roman-pages.update(0)

  if include-outline {
    set page(numbering: "I")
    set outline(depth: outline-depth)
    outline()
    context {
      roman-pages.update(counter(page).get())
    }
  }

  set page(numbering: "1")
  counter(page).update(1)
  body

  if appendix != none {
    pagebreak()
    set page(numbering: "I")
    context {
      counter(page).update(roman-pages.get().first() + 1)
    }
    appendix
  }
}
