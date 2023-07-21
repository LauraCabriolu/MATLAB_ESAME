function [xc,k] = secanti(fun,x0,x1,tol,kmax)
%per la risoluzione di un'equazione non lineare

    xprev0 = x0; %xk-1
    xprev1 = x1; %xk
    for k = 1:kmax
        %xk+1 = (xk-1 * f(xk) - xk * f(xk-1)) / f(xk) - f(xk-1)
        xc = (xprev0*fun(xprev1)-xprev1*fun(xprev0))/(fun(xprev1)-fun(xprev0)); 

        if abs(xc-xprev1) < abs(xprev1)*tol || abs(fun(xc)) < tol, return; end %verifico la condizione di iterazione del ciclo

        xprev0 = xprev1; %aggiorno xk-1
        xprev1 = xc; %aggiorno xk
    end