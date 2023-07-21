clear,clc
n = input('Inserire un valore :');

A = zeros(n);
B = ones(n);
z = 2*ones(n,1); %vettore colonna

b = A*z; %nxn * n*1
c = z' * B; %1xn * nxn
