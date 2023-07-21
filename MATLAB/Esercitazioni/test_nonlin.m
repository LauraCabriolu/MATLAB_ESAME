clear,clc

fun = @(x) x.^2 - 2; 
fun2 = @(x) e.^x - 2;
fun3 = @(x) 1./x -3;
fun4 = @(x) (x-3).^3; 
a = 0;
b = 2; 

tau = 1e-8; 
kmax = 100; 

[xb, kb] = bisezione(fun,a,b,tau,kmax); 