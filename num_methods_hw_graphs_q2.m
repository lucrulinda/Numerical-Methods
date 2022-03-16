x= [1:.1:3];
f1= log(x);
f2= (log(3)*(x.^2-3*x + 2)/2)-(log(2)*(x.^2-4.*x+3));
f3= f1-f2;


figure
% plot(x,f1,x,f2)
% legend('ln x', 'Polynomial P(x)')
% xlabel('Input x')
% ylabel('Function value')
plot(x,f3)
xlabel('Input x')
ylabel('Difference in approximation')
    
