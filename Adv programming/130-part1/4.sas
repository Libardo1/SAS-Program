%let test = one;
%let one = two;
%let two = three;
%let three = last;
%put what displays is &test;
%put what displays is &&test;
%put what displays is &&&test;
%put what displays is &&&&test;
%put what displays is &&&&&test;
%put what displays is &&&&&&test;
%put what displays is &&&&&&&test;
%put what displays is &&&&&&&&test;
%put what displays is &&&&&&&&&test;
%put what displays is &&&&&&&&&&test;