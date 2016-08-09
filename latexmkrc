#!/usr/bin/env perl

# latexmk で楽々 TeX タイプセットの薦め（＆ biblatex+biberで先進的な参考文献処理） - konn-san.com
# http://konn-san.com/prog/why-not-latexmk.html

$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode     = 3; # generates pdf via dvipdfmx
# $pdf_mode     = 2; # generates pdf via ps2pdf

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
$pdf_previewer    = "open -a ~/Applications/Skim.app";
# $pdf_previewer    = "open -a preview.app";
# $pdf_previewer    = 'open';

$dvips  = 'dvips -Ppdf -D 600';
$ps2pdf = 'ps2pdf13';
$out_dir = 'products';

