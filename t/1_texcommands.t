use LaTeXML::Util::Test;
use File::Copy qw(copy);

# Ok i'll guess this is a realy dirty workaround, but hmmm
my $latexmlc = `which latexmlc`;
# $latexmlc = (split / / , $latexmlc)[1];
chomp $latexmlc;
my $cwd = `pwd`;
chomp $cwd;
$cwd = $cwd . "/blib/script/latexmlc";
symlink $latexmlc, $cwd || die "symlink doesn't work";
# copy $latexmlc, $cwd;

latexml_tests("t/itex", requires =>{nlab=>'dvipsnam.def'});

1;
