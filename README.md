# Mohammad H. Seyedsalehi â€” academic website

Personal Jekyll website hosted on GitHub Pages at https://smhssalehi.com.

## Preview

With Ruby and Bundler installed:

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1
```

Open http://127.0.0.1:4000. Restart Jekyll after changing `_config.yml`.

## Update content

- `_data/research.json`: ordered research sections, titles, coauthors, statuses, abstracts, and optional images and paper links. Omit `paper` when no verified link exists. All abstracts start collapsed.
- `_pages/about.md`: homepage introduction.
- `_pages/about.md`: compact teaching section; `_pages/teaching.html` redirects old links to it.
- `_config.yml`: author details, portrait path, and site metadata.
- `_data/navigation.yml`: top navigation.
- `documents/`: public CV, job market paper, and teaching statement.
- `assets/css/academic.css`: responsive design.
- `_layouts/academic.html` and `_includes/academic-*.html`: shared page structure.

The supplied portrait is `images/portrait.png`, displayed in a 224px circle on desktop. Update `author.avatar` in `_config.yml` to replace it. The initials SVG is retained as the favicon.

The fuel-market and geographic images are original conceptual SVG illustrations, not empirical figures or data. The earlier crop of JMP Figure 6 is retained as an unused asset. Research abstracts are supplied by the author or drawn from the CV/research statement. The research statement itself is not published.

The underlying Academic Pages / Minimal Mistakes theme is retained; see LICENSE for attribution and license terms. Legacy theme assets are not loaded by the redesigned pages. CNAME and GitHub Pages settings are unchanged.

On this Windows checkout, the local runtime prepared for review can also be used:

```powershell
.\scripts\preview.ps1
# Build only:
.\scripts\preview.ps1 -Build
```

The local Ruby/compiler, gems, and review screenshots are ignored under `tmp/`; they are not published or committed. The public CV omits the phone number and telephone link; the original download is unchanged.
