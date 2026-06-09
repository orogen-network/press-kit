# Logo assets

## Source of truth

**SVGs are the source of truth.** Edit those; regenerate rasters from them. Never hand-edit the PNGs.

| File | Format | Dimensions | Background |
|---|---|---|---|
| `orogen-mark.svg` | SVG | viewBox 0 0 1024 1024 | transparent |
| `orogen-mark-1024.png` | PNG | 1024×1024 | transparent (RGBA) |
| `orogen-mark-512.png` | PNG | 512×512 | transparent (RGBA) |
| `orogen-mark-256.png` | PNG | 256×256 | transparent (RGBA) |
| `orogen-horizontal.svg` | SVG | viewBox 0 0 1280 320 | `#0b0d10` (crust-950) |
| `orogen-horizontal-light.svg` | SVG | viewBox 0 0 1280 320 | `#e9ebef` (crust-100) |
| `orogen-stacked.svg` | SVG | viewBox 0 0 640 720 | `#0b0d10` (crust-950) |
| `orogen-wordmark.svg` | SVG | viewBox 0 0 720 200 | transparent |

## Regenerating rasters

The PNG rasters in this directory were generated from `orogen-mark.svg` using [CairoSVG](https://cairosvg.org/). Any tool that respects SVG viewBox and stroke attributes will produce equivalent output.

```bash
# Regenerate from the press-kit/logos/ directory
make rasters
```

The Makefile in this directory invokes CairoSVG via `uv tool run`, which works without polluting the system Python environment. If `uv` is not installed on the build machine, any of the following also work:

```bash
# Option 1: ImageMagick (if installed)
for size in 1024 512 256; do
  magick -background none orogen-mark.svg -resize ${size}x${size} orogen-mark-${size}.png
done

# Option 2: rsvg-convert (if installed)
for size in 1024 512 256; do
  rsvg-convert -w $size -h $size orogen-mark.svg -o orogen-mark-${size}.png
done

# Option 3: Inkscape (if installed)
for size in 1024 512 256; do
  inkscape orogen-mark.svg --export-type=png --export-width=$size --export-height=$size --export-filename=orogen-mark-${size}.png
done
```

If none of the above are available on the target machine, the SVGs themselves are sufficient — every modern browser, design tool, and platform that accepts logo uploads supports SVG. The rasters are a convenience for platforms (older social-media admin tools, app-store submission forms) that do not.

## Notes on the design

The mark is a hexagonal silhouette of nested strata: layered chevron bands that step up to an enclosed crust at the top, sitting over a teal verification base below. It reads as upward uplift — slow accumulation of verifiable work building something permanent.

The canonical geometry lives in `../../brand/orogen-mark-{color,dark,mono}.svg`, drawn on a `0 0 79.165192 101.94904` viewBox (taller than wide, aspect ≈ 0.776). The press-kit lockups embed that same artwork by nesting it as an inner `<svg>` sized by height with the width derived from the aspect ratio, so the mark is never squished. If you change the artwork, update the three `brand/` source files and re-embed; do not hand-edit the path data here.

`orogen-mark.svg` centers the mark inside a 1024×1024 square viewBox with clearspace on every side, so the rasters come out square (convenient for avatar and app-store upload forms) without distorting the mark.

The mark is filled, not stroked. It uses two color treatments only:

- **Color** (light backgrounds): graphite crust `#282827` over a teal base `#105354`.
- **Dark** (dark backgrounds): white crust `#ffffff` over a lighter teal base `#4c898a`.

A single-color `currentColor` variant lives at `../../brand/orogen-mark-mono.svg` for monochrome contexts.
