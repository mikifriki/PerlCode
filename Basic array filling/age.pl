use Scalar::Util qw(looks_like_number);

my $substring = "return";
@ages = ();

LOOP:
$age = <STDIN>;
if ($age =~ /\Q$substring\E/) {
    foreach my $x (@ages) {
     print "Age = $ages[$0++]\n";
    } 
    goto END;
}

$age =~ s/\D+//g;
if (!looks_like_number($age)) {
    print "Please enter a value which is not a number\n";
    goto LOOP;
} else {
  push @ages, ($age);
  goto LOOP;
}
 

END:

