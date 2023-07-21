function [C,d] = gauss(A,b)

[m,n] = size(A); %size ritorna la dimensione della matrice m = righe, n = colonne

if m~=n % m != n
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

 %algoritmo di gauss
for k = 1:n-1
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