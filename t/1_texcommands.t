use LaTeXML::Util::Test;

# Ok i'll guess this is a realy dirty workaround, but hmmm
my $latexmlc = `whereis latexmlc`;
$latexmlc = (split / / , $latexmlc)[1];
chomp $latexmlc;
my $cwd = `pwd`;
chomp $cwd;
$cwd = $cwd . "/blib/script/latexmlc";
symlink $latexmlc, $cwd || die "symlink doesn't work";

latexml_tests("t/itex", requires =>{nlab=>'dvipsnam.def'});

1;
