% Bai 2:
n = 10;
%-------------------------%
% 2.1:
A = randi(2,1,n) - 1
%-------------------------%
% 2.2:
Ts = 0.1*10^-3;
t = 0:Ts:n*10*10^-3;
s = [];
for i = 1:numel(t)
  id = idivide(i,10/0.1)+1;
  if id <= n
    s(i) = A(id);
  else
    s(i) = A(n);
  end
end
plot(t,s);