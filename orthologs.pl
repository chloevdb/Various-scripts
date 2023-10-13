cat ~/tools/orthologs.pl 
#! /usr/bin/perl

 
open(F1,$ARGV[0]);
while (<F1>){
  chomp;
  @line=split;
  $hash{$line[0]}=$line[1];
  }
close(F1);
 
open(F1,$ARGV[1]);
while(<F1>){
  chomp;
  @line=split;
  if ($line[0] eq $hash{$line[1]}){
  print $line[0]."\t".$line[1]."\n";
  }}


#USAGE: orthologs.pl  species1_vs_species2.tdf species2_vs_species1.tdf > species1_species2_orthologs.tdf 