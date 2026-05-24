# wissenschaftliche-arbeit

Unified DHSN template for student papers; set `work-type` to `Hausarbeit` or
`Projektarbeit`.

```typ
#import "@local/wissenschaftliche-arbeit:0.1.0": wissenschaftliche_arbeit, authorship

#show: wissenschaftliche_arbeit.with(
  institution: "Duale Hochschule Sachsen",
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
  date: datetime.today(),
  place: "Bochum",
  outline-depth: 3,
  include-outline: true,
  appendix: [
    = Anhang
    #authorship(author: "Max Muster", place: "Musterhausen")
  ],
)

= Welcome
```
