clc;
[n,Fs] = audioread('besh.wav');
[a,b] = size(n);
ts = 1/Fs;
t = ts*(0:a-1);

plot(t,n,'b')
title('Amplitude vs. Time')
xlabel('time')
ylabel('amplitude')

[x,y] = ginput(2);
x1 = x(1,1);
x2 = x(2,1);
if (x1 <= x2)
    indexC = (t>=x1) & (t<x2);
else
    indexC= (t>=x2) & (t<x2);
end
Cn = n(indexC,:);
Ct = t(indexC);
audiowrite('e.wav',Cn,Fs);



