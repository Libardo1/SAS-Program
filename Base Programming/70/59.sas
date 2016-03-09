data FLOWERS;
infile cards truncover;
length
        Type $ 5
        Color $ 11;
input 
        Type $ 
        Color $;
cards;
daisyyellow
;  
run;

proc print;
run;
