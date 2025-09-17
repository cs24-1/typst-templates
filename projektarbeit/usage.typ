#import "projektarbeit.typ": appendix, frontmatter, main, my-outline

#let mycounter = counter("mycounter")

#show: frontmatter.with(
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
)

#show: my-outline


#context {
  mycounter.update(counter(page).get())
}
#show: main
#counter(page).update(1)

= Welcome

All these `#show sectionName` are essentially variables exported from the template.
- They contain configuration (styling) that may be needed
- You may choose to place them wherever needed.

#pagebreak()

= disclaimer

For the page numbering to work correctly you currently have to copy these counter updates.


> Feel free to commit improvements if you know how it can be done - I couldn't figure it out #emoji.moyai


Because we want the roman numerals to continue at the #link(<section-in-the-end>)[end] of our document, we have to save them into this variable
`mycounter`.

#pagebreak()

== this is just to demonstrate the page numbering :)

an almost empty page


#show: appendix
#context {
  counter(page).update(mycounter.get().first() + 1)
}

#bibliography("path/to/bibliography.bib")

= my final message <section-in-the-end>

goodbye
