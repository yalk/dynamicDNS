use warnings;
system ("curl http://icanhazip.com > currentIP.txt");
open( my $input_f1, "<", "./currentIP.txt" ) || die "Can't open $input_f1: $!";
open( my $input_f2, "<", "./IPThere.txt" ) || "Can't open $input_f2: $!";
my $IPhere= <$input_f1>;
my $IPthere= <$input_f2>;
if(!($IPhere eq $IPthere))
{
system("cat currentIP.txt > IPThere.txt; ./dropbox_uploader upload /pathToIPThere.txt /currentIP.txt");
}

