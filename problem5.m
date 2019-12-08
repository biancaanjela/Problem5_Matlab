function problem5(x);

y = [];
a = 1;
n = (0:199);

while a ~= 199

    if n(a) == 199 
        y(a) = ((1.5).*(x(a))) - (2.*x(a - 1)) + ((0.5).*x(a - 2));
        
    elseif n(a) == 0
        y(a) = ((-1.5).*(x(a))) + (2.*x(a + 1)) + ((0.5).*x(a + 2));
  
        
    else
        y(a) = ((0.5).*x(a + 1)) - ((0.5).*x(a - 1));
        
    end
    
    a = a+1;    
    
end

plot(x,'--','linewidth',1)
hold on
plot(y,':','linewidth',1)

legend('function x(n)','function y(n)')