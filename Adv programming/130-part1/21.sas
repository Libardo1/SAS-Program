%macro trans;
         %let type1=Airplane;
         
         %location(Automobile) 
        %put type1 is &type1;
      %mend;  
     
%macro location(type);
         data _null_; 
           call symput('type1', 'Train');
         run;
%mend;
%trans 


%macro trans;
         %let type=Airplane;
         
         %location(Automobile) 
        %put type is &type;
      %mend;  
     
%macro location(type);
         data _null_; 
           call symput('type', 'Train');
         run;
%mend;
%trans 