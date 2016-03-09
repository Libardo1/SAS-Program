options nodate nonumber;

Data heheda;
	input fullname $ 1-17 account $ 19-25;
	cards;
	Avery John       $601.23
	Davison Sherrill $723.15
	Holbrook Grace   $489.76
	Jansen Mike      $638.42
;

/*
data heheda;
	input name $ account $;
	datalines;
	Avery    $601.23
	Davison  $723.15
	Holbrook $489.76
	Jansen   $638.42
;
*/
proc print data = heheda;
run;
data _NULL_;
	set heheda;
	file '/folders/myfolders/Base Programming/Chp5/hehedata.Dat';
	put fullname $ 1-17 account$ 19-25;
run;