% Bai 1:
Ts = 0.00001;
t = 0:Ts:0.5;
A = 1;
phi = pi / 2;
%-------------------------%
% 1.1:
figure(1);
% f = 10Hz
f = 10;
s = A*sin(2*pi*f*t + phi);
subplot(1,3,1);
plot(t,s);
% f = 100Hz
f = 100;
s = A*sin(2*pi*f*t + phi);
subplot(1,3,2);
plot(t,s);
% f = 1kHz
f = 1000;
s = A*sin(2*pi*f*t + phi);
subplot(1,3,3);
plot(t,s);
%-------------------------%
% 1.2:
figure(2);
f = 10;
for i = 1:numel(t)
  if t(i) >= 0.2 && t(i) <= 0.3
    s(i) = 1;
  else
    s(i) = 0;
  end
end
subplot(1,2,1);
plot(t,s);
s = s.*sin(2*pi*f*t + phi);
subplot(1,2,2);
plot(t,s);