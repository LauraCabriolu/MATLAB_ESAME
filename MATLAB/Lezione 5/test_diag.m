%test_diag
n = 100;
a = randi([0,10],1);
c = randi([0,10],1);

A = a+c*randn(n);
D = diag(diag(A));  %creo mat diag da A
x = ones(n,1);      %impongo soluzione
b = D*x;            %creo vettore termini noti

[x1,d] = sist_diag(D,b);

norm(x-x1,inf)