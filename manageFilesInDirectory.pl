#### Define $directory as the full path of the directory you want to manage

my $list = `ls -1 $directory` // '';

if ($list) {                                  #### Verify the list isn't empty
	  my @files = split("\n",$list);            #### Split the raw output by newline
	  if (scalar @files > 30) {                 #### Define the file number limit after the >
		  my $todelete = shift @files;            #### Take the last file in the list
		  my $fullfile = $directory . $todelete;  #### Create the full path of the file using the $directory
      unlink $fullfile;                       #### Delete the file
    }
}
