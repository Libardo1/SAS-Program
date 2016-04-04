%macro highway;
proc sql noprint;
%let numgrp = 6;
select distinct status into :group1 - :group&numgrp
from zzz.highway;
quit;
%do i = 1 %to &numgrp;
proc print data = zzz.highway;
where status = "&&group&i" ;
run;
%end;
%mend;
%highway

%put _user_;