*%let Mv = shoes;
%macro PRODUCT(Mv = bicycles);
	%let Mv=clothes;
%mend;

%PRODUCT(Mv=tents)
%put Mv is &Mv;