%paramères du signal carre
amplitude=5;
freq_fond=20;
rapp_cyclique=60;


%Creation d'un vecteur de temps
T=1/freq_fond;
%Periode du signal
fs=1000;
%frequence d'echatilionage
t=0:1/fs:amplitude/freq_fond;

%generation du signal carre

x_carre=amplitude*square(2*pi*freq_fond*t,rapp_cyclique);
%Generation du signal a dents de sce
x_sawtooth=amplitude*sawtooth(2*pi*freq_fond*t);

%Graphiques
figure(1);clf;
subplot(2,1,1)
plot(t,x_carre)
xlabel('temps(s)')
ylabel('tension (v)')
title('Signal carre')
axis([0 5/20 -6 6])



%Construction du grapique

subplot(2,1,2)
plot(t,x_sawtooth)
xlabel('temps(s)')
ylabel('tesion (v)')
title('Signal en dents de scie')

