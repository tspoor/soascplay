#!/usr/bin/perl -w

use strict;

while (<STDIN>) {
	#chomp;
	next if /^#/;
	next if /\.sid$/i;

	if ($_ =~ m/.*?\.(flac|mp3)$/i) {
		s#^.*?(hvsc/.*?$)#$1#i;
		print;
	}
	
}
