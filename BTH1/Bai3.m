% Bai 3:
n = 10;
%-------------------------%
% 3.1:
% Note: sizeof s1 == sizeof s2 == sizeof t
% Generate digital signal s1
A = randi(2,1,n) - 1;
Ts = 0.1*10^-3;
t = 0:Ts:n*10*10^-3;
s1 = [];
for i = 1:numel(t)
  id = idivide(i,10/0.1)+1;
  if id <= n
    s1(i) = A(id);
  else
    s1(i) = A(n);
  end
end
% Generate base signal s2
Amp = 1;
w0 = 0;
f = 100;
s2 = Amp * sin(2*pi*f*t + w0);
% ASK
res1 = s1 .* s2;
figure(1);
plot(t,res1);
%-------------------------%
% 3.2:
C = 3;
fc = 1000;
c = C * sin(2*pi*fc*t + w0);
m = (C + res1) .* sin(2*pi*fc*t + w0);
figure(2);
plot(t,m);