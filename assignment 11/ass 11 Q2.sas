options ls=80 ps=50 nodate;
data stomata;
  input row needle y;
  cards;
  1 1 149
  1 2 136
  1 3 143
  1 4 121
  1 5 148
  1 6 129
  1 7 127
  1 8 134
  1 9 117
  1 10 129
  2 1 143
  2 2 139
  2 3 142
  2 4 133
  2 5 121
  2 6 134
  2 7 130
  2 8 137
  2 9 128
  2 10 132
  3 1 138
  3 2 129
  3 3 124
  3 4 126
  3 5 124
  3 6 127
  3 7 123
  3 8 119
  3 9 117
  3 10 131
  4 1 131
  4 2 143
  4 3 134
  4 4 130
  4 5 128
  4 6 113
  4 7 125
  4 8 130
  4 9 118
  4 10 137
;
proc print data=stomata;
proc mixed data=stomata method=type3;
   class needle;
   model y= / cl;
   random needle;
run;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  