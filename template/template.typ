#let project(title: "", author: "", body) = {
    // Set the document's basic properties.
    set document(author: author, title: title)
    set text(font: ("Times New Roman", "Noto Serif CJK SC"), lang: "zh")
    set heading(numbering: "壹点壹")
    set page(numbering: "i", footer: none)

    // Heading rules.
    show heading: it => {
      if (it.level == 1) [
        #counter(footnote).update(0)
        #align(center)[
          #pagebreak()
          -- *#it.body* --
        ]
      ] else [
        *#it.body*
      ]
    }

    v(1fr)
    // Title page.
    block(text(weight: "bold", 32pt, title))
    v(1em)
    block(text(20pt, author))

    set par(justify: true, spacing: 1.5em)
    set text(
        hyphenate: false,
        size: 15pt,
    )

    // Outline page.
    set outline.entry(fill: repeat[$dot$])
    show outline.entry: it => link(
      it.element.location(),
      it.indented([*第#it.prefix()章*], it.inner()),
    )
    outline(title: "目录", depth: 1)
    set page(
      numbering: "壹",
      footer: context [
        #align(center)[
          #counter(page).display("/ 壹 /")
        ]
      ]
    )
    counter(page).update(1)
    body
}

#let note(body, text-color: red) = {
  text(fill: text-color, body)
}