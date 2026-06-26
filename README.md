# typst-templates

Template(s) to help students at [DHSN](https://www.dhsn.de/) write papers more easily.

## Disclaimer

This template is **not official**. You are still responsible for following the guidelines.

## Using a template

Currently, none of this is submitted to the Typst universe, which is why you'll have to clone this repo.

<br>

1. Copy template to local package registry (run `typst info` if the path below does not work):
```bash
mkdir -p ~/.local/share/typst/packages/local/wissenschaftliche-arbeit/0.1.0

rsync -a /path/to/typst-templates/wissenschaftliche-arbeit/* \
  ~/.local/share/typst/packages/local/wissenschaftliche-arbeit/0.1.0/
```

2. Initialize your project using the local registry:
```bash
typst init @local/wissenschaftliche-arbeit:0.1.0 /your/project
```

## Links

- [Typst](https://typst.app/)
- [Tinymist](https://github.com/Myriad-Dreamin/tinymist) is a helper tool that includes a VS Code extension
