t=0:0.01:5;
%Calcul des valeus de x(t)
x=10*exp(-t)+5*exp(-0.5*t);
%Construction du rapique
plot(t,x)
xlabel('Temps (t)')
ylabel('x(t)')
grid on