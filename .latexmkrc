#$pdf_previewer = "zathura"; 
#$pdflatex='pdflatex -synctex=1 %O %B';
#push @extra_pdflatex_options, '-synctex=1'
#$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
#$pdf_mode = 1;
# Custom dependency and function for nomencl package 
$pdflatex = 'lualatex';
$pdf_mode = 4;
$postscript_mode = $dvi_mode = 0;
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}
