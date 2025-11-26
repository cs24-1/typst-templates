/// Show declaration of authorship. Adds separate supplement for the heading
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

