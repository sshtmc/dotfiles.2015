# $Date:$

$pdf_mode            = 1;
$pdflatex            = 'pdflatex -interaction=batchmode -synctex=1 %O %S';
# $pdflatex            = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$bibtex              = 'bibtex %O %B';

# for japanese platex2e
# $pdf_mode            = 3;
# $latex               = 'platex -kanji=utf8 -interaction=nonstopmode -synctex=1 %O %S';
# $bibtex              = 'pbibtex -kanji=utf8 %O %B';

$biber               = 'biber --trace --bblencoding=utf8 -u -U --output_safechars %O %B';
$biber_silent_switch = '--onlylog';

$dvipdf              = 'dvipdfmx %O %S'; # needs -pdfdvi

$max_repeat          = 5;

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Evince as a previewer
$pdf_previewer       = "evince %O %S";

$clean_ext = 'bbl';
push @generated_exts, "run.xml";
push @generated_exts, "synctex.gz";
