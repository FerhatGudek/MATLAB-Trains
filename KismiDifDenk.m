clear all, close all, clc

L = 1;
x = linspace(0,L,20); 
t = [linspace(0,0.05,20), linspace(0.5,5,10)];

m = 0;
% Aşağıdaki satırın çalışması için dosyanın en altına fonksiyonlar eklendi
sol = pdepe(m,@heatpde,@heatic,@heatbc,x,t);

colormap hot
pcolor(x,t,sol)
colorbar
shading interp % Renk geçişlerini pürüzsüz yapar, pcolor ile önerilir
xlabel("Distance x","Interpreter","latex")
ylabel("Time t","Interpreter","latex")
title("Heat Equation for $0 \le x \le 1$ and $t$", "Interpreter", "latex")

% --- GEREKLİ YARDIMCI FONKSİYONLAR ---
% pdepe fonksiyonunun çalışması için bu tanımlamalar şarttır.

function [c,f,s] = heatpde(x,t,u,dudx)
    % Diferansiyel Denklem: c * du/dt = x^(-m) * d(x^m * f)/dx + s
    c = 1; 
    f = dudx; 
    s = 0;
end

function u0 = heatic(x)
    % Başlangıç Koşulu: t = 0 anında ortamdaki sıcaklık dağılımı
    % Örnek olarak x=0.5'te bir tepe noktası olan sinüs dalgası:
    u0 = sin(pi*x); 
end

function [pl,ql,pr,qr] = heatbc(xl,ul,xr,ur,t)
    % Sınır Koşulları: x=0 (sol) ve x=L (sağ) uçlarındaki durum
    % Her iki ucu da 0 derece sabit sıcaklıkta varsayıyoruz (Dirichlet):
    pl = ul; 
    ql = 0;
    pr = ur; 
    qr = 0;
end