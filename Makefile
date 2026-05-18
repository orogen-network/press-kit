# Press-kit Makefile
#
# Targets:
#   make rasters   Regenerate orogen-mark-{1024,512,256}.png from orogen-mark.svg
#   make clean     Remove generated PNGs
#   make help      Show this list
#
# Uses CairoSVG via `uv tool run` so no global Python install is touched.
# Override RASTERIZER on the command line to switch tools, e.g.:
#   make rasters RASTERIZER=magick
#   make rasters RASTERIZER=rsvg
#   make rasters RASTERIZER=inkscape
#
# All commands run inside the press-kit/ directory.

RASTERIZER ?= cairosvg
SIZES      := 1024 512 256
SRC        := logos/orogen-mark.svg
PNGS       := $(foreach S,$(SIZES),logos/orogen-mark-$(S).png)

.PHONY: help rasters clean

help:
	@echo "Press-kit targets:"
	@echo "  make rasters [RASTERIZER=cairosvg|magick|rsvg|inkscape]"
	@echo "  make clean"

rasters: $(PNGS)

logos/orogen-mark-%.png: $(SRC)
	@echo "==> rasterizing $< -> $@ ($* px) via $(RASTERIZER)"
ifeq ($(RASTERIZER),cairosvg)
	uv tool run --from cairosvg cairosvg $< -W $* -H $* -o $@
else ifeq ($(RASTERIZER),magick)
	magick -background none $< -resize $*x$* $@
else ifeq ($(RASTERIZER),rsvg)
	rsvg-convert -w $* -h $* $< -o $@
else ifeq ($(RASTERIZER),inkscape)
	inkscape $< --export-type=png --export-width=$* --export-height=$* --export-filename=$@
else
	@echo "Unknown RASTERIZER=$(RASTERIZER). Use cairosvg, magick, rsvg, or inkscape." && exit 1
endif

clean:
	rm -f $(PNGS)
