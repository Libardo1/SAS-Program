data WORK.GEO;
     infile datalines;
     input City $20.;
     if City='Tuls' then
     State='OK';
     Region='Central';
     if City='Los Angeles' then
     State='CA';
     Region='Western';
  datalines;
  Tulsa
  Los Angeles
  Bangor
  ;
  run;
  proc print;
  run;
