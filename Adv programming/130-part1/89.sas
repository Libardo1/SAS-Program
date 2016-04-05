%let value = Philip;
proc print data = sashelp.class;
where upcase(name) = "%upcase(&value)";
run;

%put "%upcase(&value)";
%put '&value';
%put %upcase(&value);