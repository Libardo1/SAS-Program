options symbolgen;
data teachers;
	set zzz.register;
	teacher = symget('teach'||left(course_number));
run;	

proc print data = teachers;
	var student_name course_number teacher;
	title1 "Teacher for each Registered student";
run;