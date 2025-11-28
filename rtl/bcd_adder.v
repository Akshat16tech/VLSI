module BCD_Adder_1Digit (
  input [3:0] A, 
    input [3:0] B,     
    input Cin, 
    output [3:0] Sum, 
    output Cout);
    wire X0, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12;
    wire X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24;
    wire K0, K1, K2, K3;
    assign X0 = A [3] & A [2] & A [1] & B [2] & B [1];
    assign X1 = A [3] & A [1] & B [2] & B [1];
    assign X2 = A [2] & A [1] & B [2] & B [1];
    assign X3  = A[3] & B[2] & B[1];
    assign X4  = A[2] & B[3] & B[2] & B[1];
    assign X5  = A[2] & A[1] & B[2] & B[1];
    assign X6  = A[2] & A[1] & B[3];
    assign X7  = A[3] & A[2] & A[1] & B[3];
    assign X8  = A[2] & A[1] & B[2] & B[1];
    assign X9  = A[2] & A[1] & B[2] & B[1];
    assign X10 = A[2] & A[1] & B[3];
    assign X11 = A[3] & B[2] & B[1];
    assign X12 = A[3] & B[1];
    assign X14 = A[3] & A[2] & A[1] & B[3];
    assign X15 = A[2] & A[1] & B[2] & B[1];
    assign X16 = A[2] & A[1] & B[2] & B[1];
    assign X17 = A[2] & A[1] & B[3];
    assign X18 = A[2] & A[1] & B[2] & B[1];
    assign X19 = A[3] & B[2] & B[1];
    assign X20 = A[2] & A[1] & B[3];
    assign X21 = A[3] & B[2] & B[1];
    assign X22 = A[3] & B[1];
    assign X23 = A[3] & B[1];
    assign X24 = A[3] & B[1];
    assign K0 = X0 & X1 & X2 & X3 & X4 & X5 & X6 & X7;
    assign K1 = X0 & X8 & X9 & X10 & X11 & X12 & X7;
    assign K2 = X14 & X15 & X16 & X17 & X18;
    assign K3 = X19 & X20 & X21 & (X22 & X23) & X24 & X7;
     wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10,Y11, Y12, Y13;
    wire S0, S1, S2, S3;
    assign Y0  = Cin & A[0] & B[0];
    assign Y1  = Cin & A[0] & B[0];
    assign Y2  = K2 & K0 & Cin & B[0];
    assign Y3  = K2 & K0 & A[0] & B[0];
    assign Y4  = K0 & Cin & B[0];
    assign Y5  = K1 & K0 & Cin & B[0];
    assign Y6  = K1 & K0 & A[0] & B[0];
    assign Y7  = K1 & Cin & A[0];
    assign Y8  = K1 & K0;
    assign Y9  = K1 & K0 & Cin & A[0];
    assign Y10 = K2 & Cin & B[0];
    assign Y11 = K2 & A[0] & B[0];
    assign Y12 = K2 & Cin & A[0];
    assign Y13 = K3;
    assign S0 = Y0 & Y1 & Y2 & Y3;
    assign S1 = Y4 & Y5 & Y6 & Y7 & Y8 & Y9;
    assign S2 = Y10 & Y11 & Y12 & Y13;
    assign S3 = K3; 
    assign Sum = {S3, S2, S1, S0};
    assign Cout = K3;
end
endmodule
