data wheat;
    infile "/folders/myfolders/assignment 10/wheat.txt" firstobs=2;
    input variety location yield;

proc print data=wheat;

proc glm data=wheat;
    class variety location;
    model yield = variety location;

proc transpose data=wheat out=wheat2 prefix=yield;
    by location;
    var yield;
proc print data=wheat2;
proc ttest data=wheat2;
    paired yield1*yield2;
run;
