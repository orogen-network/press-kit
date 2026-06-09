# Brand quick reference

> This page is a quick-reference cheat sheet for public press materials: naming, palette, typography, motion, and imagery.

---

## Naming

| Use | Form |
|---|---|
| Network name | **Orogen** (proper noun, capital O, no italics) |
| Token symbol | **OROG** (all caps, no `$` prefix in body copy) |
| Stable credit | **CUC** (Compute Unit Credit) — USD-pegged, non-transferable, 30-day expiry |
| Testnet | **Forge** |
| Burn-and-mint engine | **BME** |
| Trusted execution environment | **TEE** |
| Primary domain | `orogen.network` |
| Subdomains | `docs.`, `status.`, `explorer.`, `attestation.`, `subsidy.`, `onboarding.`, `app.` |

Never use `$OROG`, `OROGEN` (all caps for the network), `Orog`, `orogen Network`, or `Orogen Chain`. The product is **the Orogen network** or just **Orogen**.

---

## Etymology (for press)

"Orogen" is the Greek-root word for the geological process of mountain-building — slow accumulation of verifiable work that produces something permanent. The brand mark is a hexagonal silhouette of nested strata: layered chevron bands stepping up to an enclosed crust over a teal verification base.

Use the geological metaphor **once** per surface and drop it. Don't season every paragraph with mountain talk.

---

## Color palette

All tokens are defined canonically in `landing-site/tailwind.config.mjs`. Reuse them; do not introduce new colors.

### Crust — neutral / base

| Token | Hex | Usage |
|---|---|---|
| `crust-950` | `#0b0d10` | Default page background (dark) |
| `crust-900` | `#11141a` | Card background |
| `crust-800` | `#1a1f28` | Borders, dividers |
| `crust-400` | `#7c8597` | Muted body / labels |
| `crust-300` | `#a5acbb` | Secondary body |
| `crust-200` | `#cfd3dc` | Body |
| `crust-100` | `#e9ebef` | Primary body / wordmark on dark |

### Mineral — verification axis

| Token | Hex | Usage |
|---|---|---|
| `mineral-500` | `#2AB67D` | Verification axis, verified state, primary brand accent |

### Copper — secondary accent

| Token | Hex | Usage |
|---|---|---|
| `copper-500` | `#C8753B` | Secondary campaign and illustration accent |

Use mineral green **sparingly**. It signals verifiability, not generic success. Pass / fail / warning in dashboards uses explicit status colors, not arbitrary `#0a0` / `#a00`.

### Mark color treatments

The mark uses two fills, swapped by background:

| Treatment | Crust (upper strata) | Verification base (lower) | Use on |
|---|---|---|---|
| Color | graphite `#282827` | teal `#105354` | light backgrounds |
| Dark | white `#ffffff` | teal `#4c898a` | dark backgrounds |

The `orogen-horizontal-light.svg` file demonstrates the on-light lockup: color mark plus a graphite `#151A1E` wordmark on a `crust-100` field. A single-color `currentColor` variant is available for monochrome contexts.

---

## Typography

- **Sans:** **Inter** (weights 400 / 500 / 600 / 700). System fallback: `ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`.
- **Mono:** **JetBrains Mono**. Used for: ASCII diagrams, code blocks, command output, addresses, hashes, token amounts, dashboard metric numbers.
- **Heading letter-spacing:** `-0.01em`.
- **Body line-height:** `1.55–1.65`.
- **Metric numbers** use tabular-nums (`font-variant-numeric: tabular-nums`).
- **Wordmark** is Inter **600** at letter-spacing `-0.01em` (≈ `-1.6` in 160 px); crust-100 `#e9ebef` on dark, graphite `#151A1E` on light.

---

## Logo and mark — do / don't

**Do:**

- Pair the mark with the wordmark `Orogen` in Inter 600.
- Use the mark alone for favicons, social avatars, and contexts ≤ 32 px.
- Maintain clearspace of at least half the mark height on every side.
- Use the assets in `press-kit/logos/` directly. SVGs are the source of truth.

**Don't:**

- Don't restroke or outline the mark — it is a solid two-color fill.
- Don't recolor outside the palette. Use the color treatment (graphite crust over teal base) on light, the dark treatment (white crust over teal base) on dark.
- Don't squish the mark — it is taller than wide (aspect ≈ 0.776). Size by height and let the width follow.
- Don't rotate, skew, or distort.
- Don't drop-shadow or outer-glow the mark.
- Don't place on busy photographic backgrounds. Use a brand-color background or a quiet neutral.
- Don't shrink below 24 px tall.

---

## Voice rules at a glance

**Banned in copy:**

- "Decentralized" used alone as a virtue.
- "Trustless" — say *verifiable* and name the verifier.
- "Revolutionary", "democratize", "Web3-native", "supercharge", "unlock", "redefine".
- "Crypto-native", "on-chain economy", "powered by AI".
- Vague future tenses: "will revolutionize", "is going to disrupt".
- Emoji in body copy (allowed only in social posts).

**Voice (always):** technical and sourced, plainspoken, confident not boastful, numbers beat adjectives, geological metaphors used once then dropped.

---

## File map

```
press-kit/
  README.md                                how to use the kit
  brand-quick-reference.md                 you are here
  contact.md                               press contact + embargo policy
  logos/
    orogen-mark.svg                        mark only, 1024 viewBox
    orogen-mark-{1024,512,256}.png         raster of the mark (transparent bg)
    orogen-horizontal.svg                  mark + wordmark, dark bg
    orogen-horizontal-light.svg            mark + wordmark, light bg
    orogen-stacked.svg                     mark above wordmark, dark bg
    orogen-wordmark.svg                    wordmark only (Inter 600)
    README.md                              raster regeneration instructions
  boilerplate/
    one-liner.txt                          §1 sentence
    50-words.txt                           short boilerplate
    150-words.txt                          standard boilerplate
    300-words.txt                          long boilerplate / "About"
  press-releases/
    aleph-cloud-bootstrap.md               Aleph Cloud infrastructure announcement draft
    forge-testnet-launch.md                Forge testnet launch announcement
    mainnet-tge.md                         Mainnet TGE announcement template
  bios/
    contributors.md                        press-template bio schema; named list requires approval
```
