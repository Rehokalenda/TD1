%creation d'un vecteur de temps
t=(-2:0.01:2)/1000;

%Paramètres exonentiels
a_valeurs=[500,750,1000];

%Boucle pour tracer les sinaux pour chaque valeur de a
for i=1:length(a_valeurs)
    a=a_valeurs(i);
    x=20*sin(2*pi*1000*t-pi/3).*exp(-a*t);
    
    %Contsrucion du graphique
    
    subplot(length(a_valeurs),1,i);
    plot(t,x);
    xlabel('Temps t');
    ylabel('x(t)');
    
    grid on;
end