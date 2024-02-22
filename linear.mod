set I;
set J;

param p {I,J};
param K := 2;

var x {I,J} binary;
var y {J} binary;

minimize  obj:  sum {i in I, j in J} p[i,j]*x[i,j];

subject to c1: sum {j in J} y[j] = K;
subject to c2 {i in I}: sum {j in J} x[i,j] = 1;
subject to c3 {i in I, j in J}: x[i,j] <= y[j];
