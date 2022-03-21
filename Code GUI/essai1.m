clear all;
n = 10 %le nombre de trajectoires simul´ees
m =10000 %le nombre de p´eriodes de temps
Deltat = 0.0001 %la longueur d’une periode de temps
d = 3; %dimension du mouvement brownien multidimensionnel
%Matrice de corr´elation des mouvements browniens
Gamma = [1 0.2 0.8; 0.2 1 0.5; 0.8 0.5 1];
choleskiG = chol(Gamma);
%Cr´eation du vecteur temps
temps = zeros(m+1,1); %initialisation
for i = 1 : m
temps(i+1,1) = temps(i,1) + Deltat;
end
%Cr´eation d’une matrice qui recueillera les r´esultats de chaque des trajectoires
resultats = zeros(n,m,d)
%Simulation de chaque trajectoire du mouvement brownien multidimensionnel
for j = 1 : n
%Matrice compos´ee de mxd variables al´eatoires iid N(0,1)
%Chaque colonne contient les N(0,1) servant `a construire une des composantes du brownien
Z = normrnd(0,1,m,d);
%CR´EATION D’UN MOUVEMENT BROWNIEN AVEC COMPOSANTES IND´EPENDANTES
%Chacune des colonnes de cette matrice contiendra une composante du mouvement
%brownien
W = zeros(m+1,d); %initialisation
for i = 1 : m
W(i+1,:) = W(i,:) + sqrt(Deltat)*Z(i,:);
end
%CR´EATION D’UN MOUVEMENT BROWNIEN AVEC COMPOSANTES CORR´EL´EES
%for i = 2 : m+1
%Wcorr(i,:) = W(i,:) * choleskiG;
%end
%resultats(j,:) = zeros( ...
for k = 1 : m
    for c = 1 : d
resultats(n,m,d) = W(m,d);
    end
end
end
%resultats globaux = fonction(resultats)...
figure
plot3(resultats(:,:,1),resultats(:,:,2),resultats(:,:,3))
pause;