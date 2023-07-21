function [x,k] = bisezione(fun,a,b,tau,kmax)

fa = fun(a); %calcolo il valore della funzione in a
fb = fun(b); %calcolo il valore della funzione in b

if fa*fb > 0 
    error('La radice non e'' contenuta in [a,b]')
end

c = (a+b)/2; %calcoliamo il punto medio nell'intervallo
fc = fun(c); %calcoliamo il valore della funzione nel punto medio
k = 1;

if abs(fc) < tau %se f(c) è molto vicino a 0 e inferiore alla soglia 
                 %impostata da noi "tau"   
    x = c; % abbiamo trovato la soluzione 
    return % fermiamo l'esecuzione e restituisco gli output
end


flag = 1;
while flag
%devo controllare se fc ha lo stesso segno di fa o di fb
if fa*fc < 0 %se fc ha segno discorde da fa
    b = c; %allora c prende il posto dell'estremo b
    fb = fc;
else %se invece fc ha lo stesso segno di a
    a = c; %allora c prende il posto dell'estremo a
    fa = fc;
end
k = k+1; %incremento k
c = (a+b)/2; %calcola il punto medio
fc = fun(c); %calcola il valore della funzione nel punto medio

flag = (abs((b-a))>tau) && (abs(fc)>tau) && (k<kmax); 
%criteri di arresto:
%-l'intervallo diventa più piccolo di una certa tolleranza
%-troviamo la radice della funzione in un punto medio
%-raggiungiamo il max delle iterazioni
end

x = c; %aggiorno l'output

%se la radice era presente nell’intervallo ma raggiungo il numero max di
% iterazioni raggiunto,
% avviso l'utente del motivo per cui si è usciti dal while
if abs(fc)>tau
    if k>=kmax
        fprintf('Numero max di iterazioni raggiunto')
    end
end






