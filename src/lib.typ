#import "@preview/ccicons:1.0.0": *

#let startPage(
  subject: none,
  course: none,
  title: none,
  subtitle: none,
  author: none,
  teacher: none,
  version: none,
  begin: none,
  finish: none,
) = [
  // header images
  #grid(
    columns: (1fr, 1fr),
    align: (left, right),
    image("/gallery/logo-left.png", width: 3.2cm),
    image("/gallery/logo-right.png", width: 3.2cm),
  )

  #v(1fr)

  // middle part
  #[
    #set align(center)

    #text(1.1em)[#subject]

    #course

    #text(2.5em, weight: "bold")[#title]

    #text(1.4em)[#subtitle]

    #author

    #datetime.today().display("[day]. [month repr:long] [year]")
  ]

  #v(1fr)

  // footer table
  #table(
    columns: (1fr, 4fr, 1fr, 2fr),
    align: (left, left, left, right),
    stroke: none,
    rows: 3,

    [Bewertung:],
    [],
    [Version:],
    version,

    [Betreuuer:],
    teacher,
    [Begonnen:],
    begin,

    [],
    [],
    [Beendet:],
    finish,
  )

  #v(2cm)
]

#let template(
  title: [Protokolle in Typst],
  course: [5AHIT 2024/25],
  subtitle: [Laborprotokoll],
  subject: [Systemtechnik Labor],
  author: [Simon Gao],
  teacher: [Clemens Koza],
  version: [1.1],
  begin: [],
  finish: [],
) = body => [
  #set heading(numbering: "1.1")
  #set text(lang: "de")
  #show link: set text(fill: blue)

  #startPage(
    subject: subject,
    course: course,
    title: title,
    subtitle: subtitle,
    author: author,
    teacher: teacher,
    version: version,
    begin: begin,
    finish: finish,
  )

  // header and footer
  #set page(
    header: {
      grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        inset: (bottom: 0.3em),
        [#title],
        [#subject],
        [#datetime.today().display("[day]. [month repr:long] [year]")],
        grid.hline(),
      )
    },
    footer: {
      grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        inset: (top: 0.3em),
        grid.hline(),
        [#author #cc-by],
        [#course],
        counter(page).display("1 / 1", both: true),
      )
    },
    numbering: "1/1",
  )

  #outline(indent: true)

  #pagebreak()

  #body

  #pagebreak(weak: true)

  #[
    #set heading(numbering: none)

    = Glossar TODO

    blabla @wiki:syt

    = Akronyme TODO
  ]

  #bibliography(
    "/bibliography.bib",
    title: [Literaturverzeichnis],
  )

  #outline(
    target: figure.where(kind: image),
    title: [Abbildungsverzeichnis],
  )

  #outline(
    target: figure.where(kind: table),
    title: [Tabellenverzeichnis],
  )

  #outline(
    target: figure.where(kind: raw),
    title: [Auflistungsverzeichnis],
  )
]
