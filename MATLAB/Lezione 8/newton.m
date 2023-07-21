function [x,k] = newton(fun,fund,x0,tau,kmax)
%function [x,k] = corde(fun,m,x0,tau,kmax)
%function [x,k] = secanti(fun,x0,x1,tau,kmax)

%controllo se la funzione nel punto x0 è la radice da noi cercata
if abs(fun(x0))<tau
    x = x0; %se lo è, abbiamo già trovato la soluzione
    return; %interrompo l'esecuzione e restituisco gli output
end

if abs(fund(x0))<tau
    error('la derivata si annulla in x0!')
end

x_new = x0-(fun(x0)/fund(x0)); %calcolo la prima iterazione del metodo di newton
%x_new = x0 - (fun(x0)/m); %prima iterazione del metodo delle corde

k = 1;
flag = 1;
while flag
    k = k+1; 
    x0 = x_new; %x0 prende l'iterazione precedente
    
    x_new = x0-(fun(x0)/fund(x0)); %calcolo l'iterazione successiva del metodo di newton
    %x_new = x0 - (fun(x0)/m); %calcolo l'iterazione successiva del metodo delle corde 
    

    %verifico le condizioni di iterazione del ciclo
    %la prima controlla che l'errore relativo non abbia superato il valore
    %di tolleranza impostato
    flag = (abs(x_new-x0) > abs(x0)*tau) && (abs(fun(x_new)) > tau) && (k<kmax);
end

if k>kmax
    fprintf('Num max di iterazioni raggiunto')
end

x = x_new; %assegno a x l'approssimazione trovata









