%ogni operazione va scritta con il punto, perché se andasse applicata su
%vettore senza il punto, farebbe operazioni su vettori e non sugli elementi

fun = @(x) sin(3.*x) - x.^2 + 2.*x + 3; %sin(3x) - x^2 + 2x + 3
fund = @(x) 3.*cos(3.*x) - 2.*x + 2; %3cos(3x) - 2x + 2
a = 3; %estremo dell'intervallo (bisezione)
b = 4; %estremo dell'invervallo (bisezione)

x0 = 4; %inserisco il punto di partenza x0 (newton)

tau = 1e-7; %criterio di arresto
kmax = 100; %criterio di arresto

[xb,kb] = bisezione(fun,a,b,tau,kmax);
[xn,kn] = newton(fun,fund,x0,tau,kmax);