
fprintf("1) Malloreddus" + newline)
fprintf("2) Carne" + newline)
fprintf("3) Pesce" + newline)
fprintf("4) Cheesecake" + newline)

n = input('Inserisci un numero tra 1 e 4:');

switch n 
    case 1
        disp("Malloreddus, kcal:350")
    case 2    
        disp("Carne, kcal:200")
    case 3
        disp("Pesce, kcal:100")
    case 4
        disp("Cheesecake, kcal:500")
    otherwise
        error("Il numero non è compreso tra 1 e 4")
end

