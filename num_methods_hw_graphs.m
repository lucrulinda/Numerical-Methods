x= [0:.1:10];
f1= ((x-1.6).*(x-3.8).*(x-4.5).*(x-6.3).*(x-9.2).*(x-10))/15857.856;
f2= (x.*(x-1.6).*(x-4.5).*(x-6.3).*(x-9.2).*(x-10))/489.8124;
f3= (x.*(x-1.6).*(x-3.8).*(x-4.5).*(x-6.3).*(x-10))/-4117.001;


figure
plot(x,f1,x,f2,x,f3)
legend('L6,0(x)','L6,2(x)', 'L6,5(x)')
xlabel('Input x')
ylabel('Polynomial value')
    

