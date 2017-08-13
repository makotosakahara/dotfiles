#A
#!/usr/bin/env perl

if ($^O eq 'MSWin32') {
    # windows
    $latex = 'uplatex %O -kanji=utf8 -no-guess-input-enc -synctex=1 -interaction=nonstopmode %S';
    $pdflatex = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
    $lualatex = 'lualatex -cmdx %O -synctex=1 -interaction=nonstopmode %S';
    $xelatex = 'xelatex %O -synctex=1 -interaction=nonstopmode %S';
    $biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
    $bibtex = 'upbibtex %O %B';
    $makeindex = 'upmendex %O -o %D %S';
    $dvipdf = 'dvipdfmx %O -o %D %S';
    $dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
    $ps2pdf = 'ps2pdf.exe %O %S %D';
    $pdf_mode = 3;
    $pdf_previewer = 'exit';
} else {
    # mac
    $latex = 'uplatex %O -synctex=1 -interaction=nonstopmode %S';
    $pdflatex = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
    $lualatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
    $xelatex = 'xelatex %O -synctex=1 -interaction=nonstopmode %S';
    $biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
    $bibtex = 'upbibtex %O %B';
    $makeindex = 'upmendex %O -o %D %S';
    $dvipdf = 'dvipdfmx %O -o %D %S';
    $dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
    $ps2pdf = 'ps2pdf %O %S %D';
    $pdf_mode = 3;
    $pvc_view_file_via_temporary = 0;
    $pdf_previewer = 'exit';
}
