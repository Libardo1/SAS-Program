%macro MP_ONE(pname=means);   
     proc &pname data=SASHELP.CLASS;     
     run;     
  %mend;      
  %MP_ONE(print)
  %MP_ONE()   
