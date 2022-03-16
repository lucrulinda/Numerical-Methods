%Luc Rulinda, ME58100 HW 8 code, 12/7/2021
% clear
clc

% diff. eq.
dy = @(t,y)  1+ (y./t);    
dyy = @(t,w) 1+ (w./t);

a = 1;                                        
b = 6;                                        
s = 5; % number of steps 
h = (b-a)/l; % Step size: in our case equals 1
t = a:h:b;    % t is between 1 and 6                                 
% initial condiion: y(1) = 1
y(1) = 1;
w(1)= 1;
 % Exact solution function:
x = t.*(1+log(t));  %remove semi-colon to print the data solutions 
                 
% Euler's method    
for i = 1:s    
  y(i+1)= y(i)+ h * dy(t(i),y(i)); %remove semi-colon to print the results of Euler's method
end

% RK-4 method

for ii=1:(length(t)-1)
 k1 = dyy(t(ii),w(ii));
 k2 = dyy(t(ii)+0.5*h,w(ii)+0.5*h*k1);
 k3 = dyy((t(ii)+0.5*h),(w(ii)+0.5*h*k2));
 k4 = dyy((t(ii)+h),(w(ii)+h*k3));
 w(ii+1) = w(ii) + (h/6)*(k1+2*k2+2*k3+k4); %remove semi-colon to print the results of RK-4 
end

% Plots:
hold on;
plot(t,y, '-b');
plot(t,w,'-r');
plot(t,x,'g-');
legend('Euler', 'RK-4','t*(1+log(t)')
ylabel('x'); xlabel('t');
hold off;  