data work.staff;
JobCategory= 'FA';
JobLevel= '1';
jobCategory= JobCategory || JobLevel;
run;

proc print;
run;