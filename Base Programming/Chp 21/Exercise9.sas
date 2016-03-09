data topstores;
	infile '/folders/myfolders/Base Programming/Chp 21/hehe.dat' missover;
	input Store Sales : comma. @;
	month = 0;
	do while (sales ne .);
		month + 1;
		output;
		input sales : comma. @;
		
	end;
	run;
proc print data = topstores;
run;