#======================================================================
# Makefile Maker for LaTeXML::MathSyntax
# christoph.alt@fau.de
#======================================================================
use ExtUtils::MakeMaker;
use strict;
use warnings;

#======================================================================
# Use "perl Makefile.PL <options>"
#======================================================================
WriteMakefile(
  NAME => 'LaTeXML::Plugin::iTex2MML',
  AUTHOR => 'Christoph Alt <christph.alt@fau.de>',
  ABSTRACT => "A LaTeXML extension for support the iTex commands",
  VERSION => "0.1",
  PREREQ_PM => {
    'LaTeXML'=>'0.8.3',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
      resources => {
        repository => {
          type => 'git',
          url => 'https://github.com/MathWebSearch/LaTeXML-plugin-iTex2MML.git',
          web => 'https://github.com/MathWebSearch/LaTeXML-plugin-iTex2MML',
        }}})
  : ()),
);
