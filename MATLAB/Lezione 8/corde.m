function [xc,k] = corde(fun,m,x0,tol,kmax)
%per la risoluzione di un'equazione non lineare


    xprev = x0; %xprev è uguale all'iterazione iniziale x0 
    for k = 1:kmax
        xc = xprev - (fun(xprev) / m); %xk+1 = xk - f(xk)/m
        if abs(xc-xprev) < abs(xprev)*tol || abs(fun(xc)) < tol, return; end %verifico la condizione di iterazione del ciclo
        xprev = xc; %aggiorno xprev con la nuova iterazione per la prossima iterazione del ciclo
    end