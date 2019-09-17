#!usr/bin/perl;
my ($input1,$input2) =@ARGV;
my %seq;
open IN, "$input1";
while (<IN>){
chomp;
if (/^>/){
$id=$_;
}else{
$seq{$id}.=$_;
}
}
close IN;

open IN, "$input2";
while (<IN>){
chomp;
foreach $id (keys %seq){
if ($id =~ m/$_/) {
print ">$_\n$seq{$id}\n";
}
}
}
close IN; 