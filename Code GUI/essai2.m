%Programme matlab brownien2.m
%Simulation de plusieurs trajectoires du mouvement brownien
clear all;
n = 5 %le nombre de trajectoires simul´ees
m =10000 %le nombre de p´eriodes de temps
Deltat = 0.0001 %la longueur d’une p´eriode de temps
Z = normrnd(0,1,m,n); %vecteur colonne compos´e de m v.a. iid N(0,1)
W = zeros(m+1,n); %initialisation: trajectoires du mouvement brownien
temps = zeros(m+1,1);
for i = 1 : m
W(i+1,:) = W(i,:) + sqrt(Deltat)*Z(i,:);
temps(i+1,1) = temps(i,1) + Deltat;
end
figure
plot(temps,W)
pause