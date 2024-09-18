# TGM HIT protocol template

This is a port of the [LaTeX protocol template](https://github.com/TGM-HIT/latex-protocol/) available for students of the information technology department at the TGM technical secondary school in Vienna.

## Template adaptation checklist

- [ ] Adapt or deactivate the release workflow in `.github/workflows/release.yml`
  - to deactivate it, delete that file or remove/comment out lines 2-4 (`on:` and following)
  - to use the workflow
    - [ ] check the values under `env:`, particularly `REGISTRY_REPO`
    - [ ] if you don't have one, [create a fine-grained personal access token](https://github.com/settings/tokens?type=beta) with [only Contents permission](https://stackoverflow.com/a/75116350/371191) for the `REGISTRY_REPO`
    - [ ] on this repo, create a secret `REGISTRY_TOKEN` (at `https://github.com/[user]/[repo]/settings/secrets/actions`) that contains the so created token

    if configured correctly, whenever you create a tag `v...`, your package will be pushed onto a branch on the `REGISTRY_REPO`, from which you can then create a pull request against [typst/packages](https://github.com/typst/packages/)

## Getting Started

Using the Typst web app, you can create a project by e.g. using this link: https://typst.app/?template=tgm-hit-protocol&version=latest.

```typ
#import "@preview/my-package:0.1.0": *

#id[Hello World]
```

## Usage

See the [manual](docs/manual.pdf) for details.
