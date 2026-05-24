#import "@local/wissenschaftliche-arbeit:0.1.0": authorship, wissenschaftliche_arbeit

#show: wissenschaftliche_arbeit.with(
  work-type: "Hausarbeit",
  title: "Awesome title",
  author: (
    name: "Max Muster",
    id: "1234567",
    address: "Teststr. 12, 12345 Bochum",
    seminar-group: "CSXX-X",
  ),
  field: "MeinStudiengang",
  module-abbrev: "ABC2",
  place: "Bochum",
  appendix: [
    = Anhang
    #authorship(author: "Max Muster", place: "Musterhausen")
  ],
)

= Welcome

#lorem(120)
