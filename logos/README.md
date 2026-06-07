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

The mark is nested geological strata with a mineral green verification axis. The canonical 128-px source geometry is:

```
upper strata: M24 38C40 38 50 29 64 26C78 29 88 38 104 38
middle strata: M20 56C38 56 49 47 64 44C79 47 90 56 108 56
lower strata: M18 74C37 74 49 64 64 61C79 64 91 74 110 74
base strata: M24 92C41 92 52 82 64 78C76 82 87 92 104 92
verification axis: 64,28 → 64,92
```

`orogen-mark.svg` scales the 128-px geometry into a 1024×1024 viewBox with clearspace on every side. The horizontal-lockup and stacked SVGs inline the same shape with their own per-lockup scale; if you edit the path, edit all four.

Stroke weights follow the source mark: strata = 10 px-equivalent; verification axis = 8 px-equivalent. Round caps and joins are part of the canonical strata geometry.

The mark is always stroked, never filled, and never used outside the palette: graphite `#151A1E` on light, light crust `#F5F7F8` on dark, and mineral green `#2AB67D` for the verification axis.
