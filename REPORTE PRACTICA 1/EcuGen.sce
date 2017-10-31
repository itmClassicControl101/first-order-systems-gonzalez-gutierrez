function[y]=EcuGen(a,b,c)
tau = 1/a;
t = 0:tau/10:10*tau;
n=length(t);
u = c/a;
if a~=0 then
    for i=1:n
        y(1,i) = u + ((b-u)*exp(-a*t(i)));
    end
else
    for i=1:n
        y(n) = b;
    end
end
plot(t,y)
endfunction
