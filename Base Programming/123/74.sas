data work.test;
Title = 'A Tale;k of two Cities, Charles j.Dickens';
Word = scan(title,3,' ,;');
run;
proc print;
run;

data work.test;
Title = 'A Tale;k of two Cities, Charles j.Dickens';
First = substr(scan(title,2,','),1,1);
run;
proc print;
run;