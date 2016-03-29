data _null_;
set zzz.courses;
call symput(course_code, trim(course_title));
run;
%put _user_;

%let crsid=C005;
proc print data=zzz.schedule noobs label;
where course_code="&crsid";
var location begin_date teacher;
title1 "Schedule for &c005";
run;
%let crsid=C002;
proc print data=zzz.schedule noobs label;
where course_code="&crsid";
var location begin_date teacher;
title1 "Schedule for &&&crsid";
run;