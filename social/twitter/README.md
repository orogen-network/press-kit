# Twitter/X assets — @Orogen_Network

Launch assets for the Orogen Twitter/X account. Copy lives in `copy.md`.
SVGs are the source of truth; PNGs are rendered from them.

## Assets

| File | Size | Purpose | Notes |
|---|---|---|---|
| `avatar.svg` / `avatar.png` | 400×400 | Profile picture | Circle-crop safe; mark centered on crust-950 wash |
| `avatar-1000.png` | 1000×1000 | Profile picture (retina) | Same art, upload this for a crisper avatar |
| `header.svg` / `header.png` | 1500×500 | Profile header/banner | Lockup + tagline + URL, content kept in the vertical safe band |
| `pinned-card.svg` / `pinned-card.png` | 1600×900 | Image for the pinned first tweet | 16:9 in-stream card |

## Brand fidelity

These reuse the canonical mark geometry from `../../logos/orogen-mark.svg`
(nested strata plus mineral green verification axis, always stroked) and the
exact palette and type from the marketing brief:

- Background `crust-950` `#0b0d10` with a faint copper (top-left) / mineral
  green (bottom-right) radial wash under 13% opacity.
- Wordmark and headlines in **Inter** (700/600); URLs and tags in **JetBrains
  Mono**. Tagline/muted text in crust-300/400 tones.

## Regenerating the PNGs

Rendering needs **Inter** and **JetBrains Mono** installed (both OFL). On a
machine without them, fetch the variable TTFs into a user font dir and refresh
the cache:

```sh
FD="$HOME/.local/share/fonts/orogen-build"; mkdir -p "$FD"
curl -fsSL -o "$FD/Inter.ttf"        "https://github.com/google/fonts/raw/main/ofl/inter/Inter%5Bopsz,wght%5D.ttf"
curl -fsSL -o "$FD/JetBrainsMono.ttf" "https://github.com/google/fonts/raw/main/ofl/jetbrainsmono/JetBrainsMono%5Bwght%5D.ttf"
fc-cache -f "$FD"
```

Then render with Inkscape (ImageMagick `magick` also works):

```sh
inkscape avatar.svg       --export-type=png --export-filename=avatar.png       --export-width=400  --export-height=400
inkscape avatar.svg       --export-type=png --export-filename=avatar-1000.png  --export-width=1000 --export-height=1000
inkscape header.svg       --export-type=png --export-filename=header.png       --export-width=1500 --export-height=500
inkscape pinned-card.svg  --export-type=png --export-filename=pinned-card.png  --export-width=1600 --export-height=900
```

If you edit the mark path, edit it in `../../logos/` first and mirror the change
here (the path is inlined per asset with a per-asset scale).
