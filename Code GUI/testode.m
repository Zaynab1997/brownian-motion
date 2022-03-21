aa=0.01;r0=300;f0=150;
[yy,t]=wsyssecRK4(@F,r0,f0,0,100,10000,aa);
subplot(311);
plot(yy(:,1),yy(:,2),'*');grid;
subplot(312);
plot(t,yy(:,1));grid;
subplot(313);
plot(t,yy(:,2));grid;

