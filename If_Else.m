% If Else komutlarının Matlab üzerinden gösterimi
a = 5
a = input("Lütfen a değerini giriniz: ");

if a==5
    disp("a değişkenin değeri 5'tir")
else
    disp("a değişkenin değeri 5 değildir")
end    

% elseif ile belirtilen else kısmına şart sunulabilir örneğin elseif a>5
% şeklinde

b = 9
a = input("a değerini giriniz: ");

switch a 
    case 1 
        disp("girilen bir değeridir")
    case 2 , 3    
        disp("girilen değer bir veya ikidir")
    otherwise
        disp("girilen değer bir veya ilki haricinde bir sayıdır")
end        
