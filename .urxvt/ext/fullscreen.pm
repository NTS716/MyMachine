#! perl

sub on_user_command {
	my ($self, $cmd) = @_;
	open (MYFILE, '>/home/nicholas/urlog.log');
	print MYFILE "Called\n";
	if ($cmd eq "fullscreen:switch") {
		print MYFILE "I'm in1!!!!!\n";
		my $dummy = 'wmctrl -r :ACTIVE: -b toggle,fullscreen,above' ;
	}
	close (MYFILE);
}
