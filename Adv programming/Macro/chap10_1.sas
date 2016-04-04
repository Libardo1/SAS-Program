proc print data = zzz.courses;
run;

%let crsid=C005;
data _null_;
set zzz.courses;
where course_code="&crsid";
call symput('title',trim(course_title));
run;
proc print data=zzz.schedule noobs label;
where course_code="&crsid";
var location begin_date teacher;
title1 "Schedule for &title";
options nodate nonumber;
run;

%put crsid is "&crsid";