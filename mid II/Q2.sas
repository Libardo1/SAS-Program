options ls=80 ps=50 nodate;
data tater;
  infile "/folders/myfolders/mid II/tater.txt" firstobs=2;
  
proc print data=tater;
run;