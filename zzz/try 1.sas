data insult;
input x y;
cards;
1 -2.08
2 -.72
3 .28
4 .92
5 1.2
6 1.12
7 .68
8 -.12
9 -1.28
;

proc print data = insult;

proc reg data = insult;
	model y = x;
	output out = t residual = resid predicted = pred cookd = cookd h = lev;
	run;

proc plot data = t;
	plot resid * pred/ hpos = 60 vpos = 20;

proc print data = t;
	where cookd >=  4/9;
	var x y;
	run;