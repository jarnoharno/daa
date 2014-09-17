BUILD = build

# documentation targets

$(BUILD)/%.pdf: %.tex
	latexmk -pdf -outdir=$(BUILD) $<

all: $(BUILD)/week1.pdf

BUILD:
	mkdir -p $(BUILD)

doc-cont:
	cd doc; latexmk -pdf -outdir=$(BUILD) -pvc -view=none \
		-interaction=nonstopmode week1.tex

# clean targets

clean:
	rm -rf $(BUILD)
