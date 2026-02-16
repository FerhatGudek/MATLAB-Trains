% Fonksiyonun türevini bulmak için diff(y) komutu kullanılmaktadır.
% Fonksiyonun integralini almak için int(y) komutu kullanılmaktadır
% simplify(y) ile sadeleştirme yapılmaktadır
% expand(y) ile verilen üstel ifadenin açılımı yapılmaktadır
% Factor(y) kullanılarak, açılımış olarak verilen harfli ifadeyi üstel
% ifade olarak verir
% Örnek y = 4x^3 - 8x^2 + 5x +17 denklemini çözünüz%
 clear all, close all , clc
 syms x y f
 f = 4*x^3-8*x^2+5*x+17;
 solve(f)
 diff(f)
 int(f)
 simplify(f)
 clear all, close all , clc
 syms x y 
 y = 4*x^3-8*x^2+5*x+17
 int( y, 0,4)
 % 580 / 3 cevabını doğru bir şekilde aldık.

 % şimdi bir denklem sadeleştirme sorusunu çözelim
 clear all, close all ,clc
 syms a b
 f2 = (a-b)^5
 expand(f2)
 pretty(ans)
 % bu şekilde olabilecek en sade hale getirdik
% symsum(k, başlangıç, son ) ile seri toplamı yapılır
% burada k serinin sayacıdır. Sayacın ilk ve son 
% değerleri ise başlangıç ve son ifadeleridir.
% sonsuza giden serilerde sınır inf veya -inf olarak belirtilmektedir
% 4x5x6 + 5x6x7+.. + 98x99x100 serisinin toplamını yazınız
clear all, close all , clc
syms k
symsum(k*(k+1)*(k+2),4,98 )
% bir başka örneğini yapalım
clear all, close all , clc
syms k 
symsum((2/3)^k,3,100) 
% Değişkenin herhangi bir değeri polinomun değeri 
% bulunmak istenirse polyval(x,..) kullanılır
% x polinomun kökleri roots(x) ile hesaplanır
% Kökleri verilen bir polinomu üretmek için poly() kullanılır
% İki polinom çarpımı için z = conv(x,y) ve bölmek 
% için [bolum, kalan] = deconv(x,y) kullanılmaktadır
% Polinomların toplamı için t  =x + y veya çıkartma için t = x-y kullanılır
% Örnek sorular ile başlayalım
% x = s^4 + 3s^3-15s^2-2s+9 polinomunu matlabda yazınız
clear all , close all , clc
syms s
f = s^4+3*s^3-15*s^2-2*s+9
subs(f,s,2)
% s^4+3*s^3-15*s^2-2*s+9 ve y = s^4+1 polinomlarını çarpıp bölünüz
clear all, close all, clc
syms s 
x = [1 3 -15 -2 9];
y= [1 0 0 0 1]
z = conv(x,y)
[bolum, kalan] = deconv(x,y)

% polinomlar için f = polyder(x) komutu kullanılarak 
% x polinomunun 1. türevi ve polyder(f) ise 2. türev
% hesaplanmaktadır. ayrıca diff() ile polinom ve fonksiyonlar için türev
% alnıbilmetktedir
clear all, close all , clc
syms s 
x = [1 3 -15 -2 9];
y= [1 0 0 0 1]
f = polyder(x)


% bir polinomda x değişkeni 0'a yaklaşırken polinomun değeri şu şekilde
% hesaplanır limit(f)  , bir polinomda x değişkeni 3'e yaklaşırken
% polinomun yaklaşık değeri şu şekilde hesaplanır limit(f,3)
clear all, close all, clc
syms s 
x = [1 3 -15 -2 9];
y= [1 0 0 0 1];
f = polyder(x) 
f = s^4+3*s^3-15*s^2-2*s+9;
diff(f)
polyint(x) 
limit(f, 4)
% doğrusal olmayan denklemler için sıradaki işlemler yapılır
clear all, close all, clc
fun = @root2d;
x0 = [0,0];
x = fsolve(fun,x0)