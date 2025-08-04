# typst-templates

## using projektarbeit.typ

in `main.typ`:

```typst
#import "projektarbeit.typ": conf

#show: conf.with(
  title: "meine Projektarbeit",
  author: (
    name: "Max muster",
    id: "12345678",
    address: "Musterstr. 123, 0123 Dresden",
    seminar-group: "CS20-2",
  ),
)
```