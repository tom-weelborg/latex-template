#!/bin/bash

set -e

TEXFILE="main"
OUTDIR="out"

mkdir -p "$OUTDIR"

lualatex -shell-escape -interaction=nonstopmode -output-directory="$OUTDIR" "$TEXFILE.tex"

biber --input-directory "$OUTDIR" --output-directory "$OUTDIR" "$TEXFILE"

makeindex -s index.ist "$OUTDIR/$TEXFILE.idx"

makeglossaries -s "$OUTDIR/$TEXFILE.ist" "$OUTDIR/$TEXFILE"

lualatex -shell-escape -interaction=nonstopmode -output-directory="$OUTDIR" "$TEXFILE.tex"

lualatex -shell-escape -interaction=nonstopmode -output-directory="$OUTDIR" "$TEXFILE.tex"

echo "Compilation finished."