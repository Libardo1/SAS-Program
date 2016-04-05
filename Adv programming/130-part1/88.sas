%let statement = %bquote(proc print data = sashelp.class;);
%let statement1 = proc print data = sashelp.class;;


options symbolgen;
&statement
&statement1