%macro CHECK1(Num = 4);
	%let Result = %eval(&Num gt 5.1);
	%put Result is &result;
	%mend;

%macro CHECK2(Num = 4);
	%let Result = %sysevalf(&Num gt 5.1);
	%put Result is &result;
	%mend;

%check1(Num=10)

%check2(Num=10)