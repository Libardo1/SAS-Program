/*One-Way ANOVA*/
/*Data Example: Fish Size*/
/*set options for printouts*/
options ls=74 ps=50 nodate;
options formchar="|----|+|---+=|-/\<>*";

/*enter data*/
data fish;
    infile "/folders/myfolders/fish.txt" missover;
    input trt y;

    /*check data entries*/
proc print data=fish;
    /*scatter plot*/
proc plot data=fish;
    plot y*trt / hpos=60 vpos=20;

    /*summarize data*/
proc means data=fish;
    by trt;
    var y;

    /*one-way ANOVA*/
proc glm data=fish;
    class trt;
    model y=trt;
    means trt / lsd tukey lines;
    lsmeans trt / est tdiff pdiff cl;
    contrast 'avg 1+2 vs 3' trt 0.5 0.5 -1;
    contrast '1 vs 2' trt 1 -1 0;
    estimate 'avg 1+2 vs 3' trt 0.5 0.5 -1;
    estimate '1 vs 2' trt 1 -1 0;
    output out=outresid student=exresid predicted=fittedy;

    /*residual plot*/
proc plot data=outresid;
    plot exresid*fittedy / hpos=60 vpos=20;
    run;
quit;

/*Note the use of a quit command at the end*/