%let lib = %upcase(sashelp);
proc sql;
select nvar from
dictionary.tables
where libname = "&lib";
quit;