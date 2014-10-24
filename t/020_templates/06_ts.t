use strict;
use warnings;
use Test::Requires 'Template::Semantic';
use Test::More;
use Tiffany;
use Tiffany::Template::Semantic;

{
    my $tmpl = Tiffany::Template::Semantic->new();
    is $tmpl->render('t/tmpl/foo.ts', {'#name' => 'john'}), qq{<html xmlns="http://www.w3.org/1999/xhtml">Hello, <div id="name">john</div>.</html>\n};
}
{
    my $tmpl = Tiffany::Template::Semantic->new();
    is $tmpl->render(\q{<html xmlns="http://www.w3.org/1999/xhtml">Hello, <div id="name">ben</div>.</html>}, {'#name' => 'john'}), qq{<html xmlns="http://www.w3.org/1999/xhtml">Hello, <div id="name">john</div>.</html>\n};
}

done_testing;

