use strict;
use Test::More 0.98 tests => 4;

my $m;
my $sol;

BEGIN {
    use_ok( $m = 'Dreamhack::Solitaire' );
}

eval {$sol = $m->new(lang => 'mylang', suits => [], valence => [])};
ok(!$sol, 'reject lang with suits and valence is ok');

eval {$sol = $m->new(lang => 'mylang')};
ok(!$sol, 'bad lang is ok');

eval {$sol = $m->new(lang => 'ru_RU.utf8')};
ok($sol, 'good lang is ok');

done_testing;

