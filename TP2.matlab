clear all
close all
clc




%Q 1:

[x,fe]=audioread("C:\Users\Desktop\newsound.m4a");

%Q 2:

sound(x,fe)
plot(x)

%Q 3:

sound(x,fe*2)
sound(x,fe/2)
sound(x,fe)



%Q 4:

stem(x)


%Q 5:


riennesertde=x(1025:(2.05e05));
stem(riennesertde)
sound(riennesertde,fe)

%Q 6:

courir=x((2.239e+05):(2.642e+05));
sound(courir,fe)

ilfaut=x((2.987e+05):(3.81e+05));
sound(ilfaut,fe)

partirapoint=x((4e+05):(5.28e+05));
sound(partirapoint,fe)



%Q 7:
parole=[riennesertde ,partirapoint ,ilfaut,courir];
sound(parole,fe)


% Synthese et analyse spectrale 


%q 1:

fe=8192;
te=1/fe;
N=5000;
t=(0:N-1)*te;


do=10*cos(2*pi*270*t);
sound(do,fe)


re=10*cos(2*pi*300*t);
sound(re,fe)


mi=10*cos(2*pi*339*t);
sound(mi,fe)


fa=10*cos(2*pi*350*t);
sound(re,fa)


sol=10*cos(2*pi*400*t);
sound(sol,fe)


la=10*cos(2*pi*450*t);
sound(la,fe)


si=10*cos(2*pi*500*t);
sound(si,fe)


do2=10*cos(2*pi*523*t);
sound(do2,fe)  



musique=[do,re,mi,fa,sol,la,si,do2];
sound(musique,fe)
 

%Spectr:

%q 2:

f=(0:N-1)*(fe/N);



spectre_musique=fft(musique);
signalAnalyzer(abs(fftshift(spectre_musique)));
