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

The mark is a five-point ridge polygon with an inner emerald hairline tracing the central two ridges. The canonical 64-px favicon path data is:

```
outer polygon: M6 50 L22 22 L30 34 L40 14 L58 50 Z
horizon line:  6,50 → 58,50
inner ridge:   M22 22 L30 34 L40 14
```

`orogen-mark.svg` carries the favicon path data verbatim and scales / translates it into a 1024×1024 viewBox so the mark fills the canvas with ≈14% clearspace on every side (clearspace at least half the mark height). The horizontal-lockup and stacked SVGs inline the same shape with their own per-lockup scale; if you edit the path, edit all four.

Stroke weights follow the favicon: outer/horizon = 2.6 px-equivalent; inner ridge = 1.4 px-equivalent. The miter-join is preserved — never substitute round joins; they soften the crystalline character of the mark.

The mark is always stroked, never filled, and never used outside the palette (magma `#f59e0b` outer + crystal `#34d399` inner on dark; `#b4730a` outer + `#0f8a64` inner on light for AA contrast).
