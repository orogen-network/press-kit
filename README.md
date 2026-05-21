# Orogen press kit

This directory holds the materials a journalist, partner, exchange listing analyst, or community moderator needs to refer to Orogen accurately and with on-brief assets. Orogen Forge readiness is tracked through the published release gates; mainnet TGE follows audit completion. SVGs are the source of truth for marks; PNG rasters are convenience renders for platforms that do not accept SVG.

## What's in here

| Path | What | When to use |
|---|---|---|
| [`brand-quick-reference.md`](./brand-quick-reference.md) | One-page cheat sheet: naming, palette, type, do/don't | Quick lookup |
| [`contact.md`](./contact.md) | Press email + embargo policy | Routing press inquiries |
| [`logos/`](./logos/) | Mark, horizontal lockup (dark + light), stacked lockup, wordmark | Any visual use |
| [`boilerplate/`](./boilerplate/) | One-liner, 50-word, 150-word, 300-word | Drop into articles, "About" sections, exchange listings |
| [`press-releases/`](./press-releases/) | Forge testnet launch announcement + mainnet TGE template | Adapt for issued releases |
| [`bios/contributors.md`](./bios/contributors.md) | Press-template contributor bio schema | Underlying schema; live list at [orogen.network/community](https://orogen.network/community) |

## Quick reference

- **Network:** Orogen
- **Token:** OROG
- **Testnet:** Forge (live)
- **Domain:** [orogen.network](https://orogen.network)
- **Documentation:** [docs.orogen.network](https://docs.orogen.network)
- **Source code:** [github.com/orogen-network](https://github.com/orogen-network)
- **Etymology line for press:** "Orogen" is Greek-root for the geological process of mountain-building — slow accumulation of verifiable work that produces something permanent.
- **One-liner:** see [`boilerplate/one-liner.txt`](./boilerplate/one-liner.txt).
- **Press contact:** `press@orogen.network`.

## How to use the logos

The brand mark is a crystalline mountain in **stroked** outline — a five-point ridge with the inner two ridges drawn in emerald (the "verifiable" inner facet) and the outer silhouette in magma amber. The horizon baseline closes the polygon.

| Asset | Format | Background | Best for |
|---|---|---|---|
| `orogen-mark.svg` | SVG, viewBox 0 0 1024 1024 | Transparent | Any size; embed in HTML/Markdown |
| `orogen-mark-1024.png` | PNG, 1024×1024 | Transparent | Social avatars, app icons |
| `orogen-mark-512.png` | PNG, 512×512 | Transparent | Slack/Discord avatars |
| `orogen-mark-256.png` | PNG, 256×256 | Transparent | Inline article art, retina favicons |
| `orogen-horizontal.svg` | SVG, viewBox 0 0 1280 320 | `#0b0d10` dark | Hero / press header on dark |
| `orogen-horizontal-light.svg` | SVG, viewBox 0 0 1280 320 | `#e9ebef` light | Hero / press header on light |
| `orogen-stacked.svg` | SVG, viewBox 0 0 640 720 | `#0b0d10` dark | Vertical layouts, sponsor boards |
| `orogen-wordmark.svg` | SVG, viewBox 0 0 720 200 | Transparent | Where the mark already appears elsewhere |

**Do:**

- Pair the mark with the wordmark `Orogen` in Inter 600+ on dark backgrounds.
- Maintain clearspace of at least half the mark height on every side.
- Use the mark alone for favicons, social avatars, and contexts ≤ 32 px.

**Don't:**

- Don't fill the mark — it is always stroked.
- Don't recolor outside the palette. Magma `#f59e0b` outer ridge + crystal `#34d399` inner ridge are non-negotiable on dark backgrounds. On light, use `#b4730a` outer + `#0f8a64` inner (see `orogen-horizontal-light.svg`).
- Don't rotate, skew, distort, or apply effects (drop shadow, outer glow).
- Don't shrink below 24 px tall.

## License

The brand assets in this directory are released under the same terms as the repository's documentation, except that the **Orogen name, wordmark, and mark** themselves remain trademarks of the project and may not be used to imply endorsement or affiliation without written permission. Editorial use (news articles, exchange listings, conference badges where Orogen is a participant) is permitted under standard nominative-fair-use principles.

## Regenerating raster assets

PNG rasters are produced from the SVG source with the helper Makefile in [`logos/`](./logos/). See [`logos/README.md`](./logos/README.md).
