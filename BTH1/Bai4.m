% Bai 4:
n = 10;
%-------------------------%
% 4.1:
% Re-generate signal from 3.1
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
Amp = 1;
w0 = 0;
f = 100;
s2 = Amp * sin(2*pi*f*t + w0) .* s1;
% Plot spectrum with out An
figure(1);
Fs1 = 10000;
T1 = 1/Fs1;
L1 = numel(t);
t1 = (0:L1-1)*T1;
y1 = s2;
NFFT1 = 2^nextpow2(L1);
Y1 = fft(y1, NFFT1)/L1;
f1 = Fs1/2*linspace(0, 1, NFFT1/2+1);
plot(f1, 2*abs(Y1(1:NFFT1/2+1)));
%-------------------------%
% 4.2:
% Re-generate signal from 3.2
t = 0:Fs:n*10*10^-3;
C = 3;
fc = 1000;
c = C * sin(2*pi*fc*t + w0);
m = (C + s2) .* sin(2*pi*fc*t + w0);
% Plot spectrum without An
figure(2);
Fs2 = 10000;
T2 = 1/Fs2;
L2 = numel(t);
t2 = (0:L2-1)*T2;
y2 = m;
NFFT2 = 2^nextpow2(L2);
Y2 = fft(y2, NFFT2)/L2;
f2 = Fs2/2*linspace(0, 1, NFFT2/2+1);
plot(f2, 2*abs(Y2(1:NFFT2/2+1)));
%-------------------------%
% 4.3:
An = 1;
t = 0:Fs:n*10*10^-3;
% Plot spectrum with An
figure(3);
Fs3 = 10000;
T3 = 1/Fs3;
L3 = numel(t);
t3 = (0:L3-1)*T3;
y3 = m + An * randn(size(t));
NFFT3 = 2^nextpow2(L3);
Y3 = fft(y3, NFFT3)/L3;
f3 = Fs3/2*linspace(0, 1, NFFT3/2+1);
plot(f3, 2*abs(Y3(1:NFFT3/2+1)));