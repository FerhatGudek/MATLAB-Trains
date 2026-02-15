% For ile While döngülerinin Matlab üzeirnden gösterimi

a = 0 
for i = 1:5
    disp("Döngünün sayaç değeri: ")
    disp(i)
    a = a+1;
end    

% döngü içinde döngü

a = 0 
for i = 1:5
    disp("Döngünün sayaç değeri: ")
    disp(i)
    a = a+1;
    for j = 1:7
        disp(j)
        b = b+1;
    end    
end    

% şimdi bir while şeklinde bir gösterim yapalım
a = 0

while i~='e'
    i = input("Çıkış yapılsın mı ? , "s")
  disp("Döngünün sayaç değeri: ")
  disp(i)
  a = a+1
end  
    
