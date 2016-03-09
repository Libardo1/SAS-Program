data work.flights;
destination = 'CPH';
select(destination);
when('LHR') city = 'London';
when('CPH') city = 'Copenhgen';  /* The length of 'Copenhgen' shown is the same as 'London' */
otherwise;
end;
run;

proc print;
run;