# carpentries-theme

This repository provides a remote Jekyll theme for use with The Carpentries.

> !!! CAUTION !!!
>
> This is *early alpha* work, not yet ready for wider adoption.

Many lessons built for The Carpentries carry around the website theme assets
such as CSS and favicons. These things evolve, but keeping a given lesson
synchronized with the upstream [styles](https://github.com/carpentries/styles)
repository, as well as the "best practice"
[lesson-example](https://github.com/carpentries/lesson-example) repo,
is laborious and error-prone. This project provides an alternative for those
who do not need to customize the theme or do not wish to carry the code around
as part of their repository.

## Installation

The goal is to help you carry around less code, not more. This is accomplished
using [bundler](https://bundler.io/) and Jekyll remote themes. It is recommended
that you carry out the process of trimming down on your local machine, in a
separate branch, so you can easily get back if things don't go to plan:

```bash
$ git checkout -b install_carpentries-theme
```

The key step is to edit your `_config.yml` to point to this theme, adding

```yml
remote_theme: carpentries/carpentries-theme
```

to the end. With that done, please feel free to delete the `assets` folder:

```bash
$ git rm -r assets
```

You can also delete *almost* everything from `_includes`, again using `git rm`.
If you have your own files in `_includes`, please use `git mv` to move them to
`files` instead, and update links accordingly. Please retain the following
files, if they exist; otherwise, the lesson will fail to build.

- `all_figures.html`
- `figure.html`

Next, please synchronize the following items with the current versions in
The Carpentries [styles](https://github.com/carpentries/styles) repository
&ndash; retaining your local edits!

- Folders
  - `.github/`
  - `bin/`

- Files
  - `CODE_OF_CONDUCT.md`
  - `Gemfile`
  - `LICENSE.md`
  - `Makefile`
  - `_config.yml`
  - `.travis.yml`
  - `aio.md`

> *Note:* If you have not already configured Travis-CI to test your pull
> requests and code before deploying, please do so by visiting
> <https://travis-ci.org/github_user_name/repository_name>.

Finally, build your local site using the remote theme.

If you have GNU Make installed:

```bash
make serve
```

otherwise,

```bash
$ bundle install
$ bundle exec jekyll serve
```

Check that everything looks correct, and that Jekyll throws no errors &ndash;
then push your branch and file a pull request!
