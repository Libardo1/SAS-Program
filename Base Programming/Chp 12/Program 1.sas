options nodate nonumber;

Data heheda;
	input fullname $ 1-17 account $ 19-25;
	cards;
	Avery John       $601.23
	Davison Sherrill $723.15
	Holbrook Grace   $489.76
	Jansen Mike      $638.42
;

data hehe;
	obsnum = 1;
	set heheda (keep = fullname) point = obsnum;
	output;
	stop;
run;
proc print data = hehe;
run;