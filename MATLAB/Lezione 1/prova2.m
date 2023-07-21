fprintf('Questo script calcola una frazione\n')

n = input('Inserire il valore del numeratore:');
d = input('Inserire il valore del denominatore:');

if d < 5e-10   %5*10^(-10)
    warning('attenzione! Divisione per un numero molto piccolo!')
elseif d == 1
    r = n;
    fprintf('\nDivisione per 1 non calcolata!')
else
    r = n/d;
    fprintf('\nIl risultato della divisione e'': %f ',r)
end








