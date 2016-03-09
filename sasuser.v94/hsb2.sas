data hsb2;
  set "/folders/myfolders/sasuser.v94/hsb2";
  hiwrite = write >=52;
run;
proc means data = hsb2 mean std;
run;