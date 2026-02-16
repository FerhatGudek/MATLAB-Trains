% Örnek sorular ile başlayalım
% (3x^5y^5-2y)dx + (5x^6y^4+x)dx = 0 olarak verilen diferansiyel denklemi
% çözelim
clear all , close all, clc
syms y(x) 
eqn = (3*x^5*y^5-2*y)+ diff(y)*(5*x^6*y^4+x) == 0
S = dsolve(eqn)
clear all , close all , clc
syms y(t) a b
eqn = diff(y,t,2) == a^2*y;
e = diff(y,t);
cond = [y(0)==b e(0) ==1];
S = dsolve(eqn,cond)

clear all, close all, clc
syms y(t) 
eqn = diff(y) == y+exp(-y)
S = dsolve(eqn,"Implicit", true)
% S  = dsolve(eqn, Implicit= ture bazı versiyonlarında
pretty(S)

% a parametresinin tüm olası değerlerini içeren çözümleri elde etmek için
% IgnoreAnalyticConstraints değeri false olarak ayarlayarak
% basitleştirmeler kapatılabilir
clear all ,close all , clc
syms y(t) a
eqn = diff (y,t) == y+a/sqrt(y)
cond = [y(a)== 1];
S = dsolve(eqn,cond); 
pretty(S)
yNotsimplifled = dsolve(eqn,cond, "IgnoreAnalyticConstraints",false)

clear all , close all, clc
syms y(x) a 
eqn = (x^2-1)^2*diff(y,2) + (x+1)*diff(y) - y == 0;
cond = [y(a)==1];
S = dsolve(eqn,cond)
clear all, close all, clc
syms y(x) a 
eqn = (x^2-1)^2*diff(y,2) + (x+1)*diff(y) - y == 0;
cond = [y(a)==1];
S = dsolve(eqn,cond)

close all, clear all, clc
syms y(t) z(t)
eqn1 = diff(y,t) == z;
eqn2 = diff(z,t) == -y; 
eqn = [eqn1,eqn2];
S = dsolve(eqn)
S.y
S.z
[yS,zS] = dsolve(eqn)
