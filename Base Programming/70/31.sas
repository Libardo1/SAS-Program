data WORK.SPORTS_INFO;
     length Fname Sport1-Sport3 $ 10;
     infile datalines dlm=',';
     input Fname $ Sport1 $ Sport2 $ Sport3 $;
     datalines;
        Kim,Basketball,Golf,Tennis
  	Bill,Football
  	Tracy,Soccer,Track
  	la,lala,lalalala
  	bla,blala
  	;

  run;
 
  proc print data=WORK.SPORTS_INFO;
