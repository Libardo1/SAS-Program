%let a = cat;
%macro animal;
%let a=dog;      
%mend;      

%animal      
%put a is &a; 