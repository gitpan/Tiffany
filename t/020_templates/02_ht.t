use strict;
use warnings;
use Test::Requires 'HTML::Template';
use Test::More;
use Tiffany;
use Tiffany::HTML::Template;

{
    my $tmpl = Tiffany::HTML::Template->new();
    is $tmpl->render('t/tmpl/foo.ht', {name => 'john'}), "Hello, john.\n";
}
{
    my $tmpl = Tiffany::HTML::Template->new();
    is $tmpl->render(\q{Hello, <TMPL_VAR NAME="name">.}, {name => 'john'}), "Hello, john.";
}

done_testing;

