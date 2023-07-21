function [C,d] = gauss_piv(A,b)

[m,n] = size(A);

if m~=n
    error('La matrice A non e'' quadrata')
end


[mb,nb] = size(b);

if mb~=m
    error('il vettore b ha la lunghezza sbagliata')
elseif nb ~= 1
    error('b non e'' un vettore')
end

if det(A) < 1e-14
    error('Matrice singolare')
end

for k = 1:n-1   
    [~,pos] = max(abs(A(k:n,k)));%restituisce la posizione del massimo valore 
    %in valore assoluto della colonna k 
    l = pos+k-1; %calcolo la riga con il valore maggiore della colonna k
    A([k,l],:) = A([l,k],:); %scambia la riga
    b([k,l]) = b([l,k]); %scambia la riga anche del vettore b

    %algoritmo di gauss senza pivoting
    for i = k+1:n
        m = A(i,k)/A(k,k); %calcolo la variabile che permette l'annullamento
        %del valore di A(i,k)
        A(i,:) = A(i,:)-m*A(k,:); %porto a 0 il valore di A(i,k) e svolgo la stessa
        %operazione anche con gli altri valori della riga
        b(i) = b(i) -m*b(k); %faccio la stessa operazione fatta sopra con b(i)
    end
end

C = A;
d = b;
