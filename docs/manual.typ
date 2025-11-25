#import "template.typ" as template: *
#import "/src/lib.typ" as template

#show: manual(
  package-meta: toml("/typst.toml").package,
  title: "TGM HIT protocol template",
  subtitle: [
    A protocol template for students of the HIT department at TGM Wien.
  ],
  date: datetime(year: 2024, month: 10, day: 9),

  // logo: rect(width: 5cm, height: 5cm),
  // abstract: [
  //   A PACKAGE for something
  // ],

  scope: (template: template),
)

= Introduction

This template is aimed at students of the information technology department at the TGM technical secondary school in Vienna. It can be used both in the Typst app and using the CLI:

Using the Typst web app, you can create a project by e.g. using the "Create new project in app" button on the package's Universe page: #context link("https://typst.app/universe/package/" + package-meta().name).

To work locally, use the following command:

#context raw(
  block: true,
  lang: "bash",
  "typst init @preview/" + package-meta().name
)

If you are getting started writing your protocol, you will likely be better off looking into the document created by the template: it contains instruction and examples on the most important features of this template. If you have not yet initialized the template, a rendered version is linked in the README. If you are new to Typst, also check out the Typst documentation: https://typst.app/docs/.

The rest of this manual documents the individual functions offered by this package. This is useful if you want to know what customization options are available, or you're not sure what parts of the template package do.

As a school-specific template, this package does not offer enough configurability to be used at different institutions. However, if you like this template, feel free to adapt the code (MIT-licensed) to your needs, or open a Github issue if you think the template could be adapted to work for your requirements.


= Module reference

#module(
  read("/src/lib.typ"),
  name: "tgm-hit-protocol",
  label-prefix: none,
  show-module-name: false,
)
