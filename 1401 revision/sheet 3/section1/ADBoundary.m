function b = ADBoundary(A,B,n)
nob = 2^n;
QI = (B-A)/nob;
b = A:QI:B;
end