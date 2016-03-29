proc sql;
select course_code, location, begin_date format=mmddyy10.
	into :crsid1-:crsid3,
	:place1-:place3,
	:date1-:date3
	from zzz.schedule
	where year(begin_date)=2002
	order by begin_date;
quit;

proc sql;
	select *
	from zzz.schedule
	where year(begin_date) = 2002
	order by begin_date;
quit;