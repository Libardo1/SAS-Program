proc sql noprint;
	select count(*) into :numrows
		from zzz.schedule
		where year(begin_date)=2002;
	%let numrows=&numrows;
	%put There are &numrows courses in 2002;
	select course_code, location,
		begin_date format=mmddyy10.
	into :crsid1-:crsid&numrows,
		:place1-:place&numrows,
		:date1-:date&numrows
		from zzz.schedule
		where year(begin_date)=2002
		order by begin_date;
	%put _user_;
quit;

proc sql;
	select distinct location into :sites separated by ' '
		from zzz.schedule;
	title1 'Total Revenue &sites';
	%let sites = &sites;
	%put &sites;
quit;

