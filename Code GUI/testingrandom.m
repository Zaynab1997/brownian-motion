


N=10;
R=8.314472;
Na=6.0221e+023;
            % time step     


 x=zeros(N+1,1);   % place to store x locations
 y=zeros(N+1,1);   % place to store y locations
 z=zeros(N+1,1);   % place to store z locations
 
 x1=zeros(N+1,1);   % place to store x locations
 y1=zeros(N+1,1);   % place to store y locations
 z1=zeros(N+1,1);   % place to store z locations
grad=zeros(3,N+1);
 for i=1:1:size(grad)
     for j=1:1:N+1
         grad(i,j)= sign(randn);
     end
 end
 temp=300;
 visc=1.28;
 r1=0.2;
 sigma=2;
 T=5;
 h=T/N; 
x(:)=[0.5 -0.2 -0.9 0 0 0.25 0.25 0.5 0.3 0.4 -0.9];
y(:)=[0 -0.1 0.8 0.5 -0.3 0.75 0.25 -0.8 0.3 -0.1 0.6];
z(:)=[0 0.15 0 0.5 -0.5 0.25 -0.75 -0.4 0.8 0.25 -0.6];
scale=r1/20;
r2=0.0228;
r=r1*10^-5;
k=R*temp/(6*pi*Na*visc*r)*10^17;
  betta=sigma*sqrt(h)*k*normrnd(0,1);
  betta=betta/50;
 alpha=sqrt((r1/r2)/betta^2);
 alpha=alpha/50;
 %initialisation
  for i=1:1:N+1
   x1(i)=x(i)-grad(1,i).*alpha;  
    y1(i)=y(i)-grad(2,i).*alpha;
     z1(i)=z(i)-grad(3,i).*alpha;
 end
 etat0=[x1(:) y1(:) z1(:)];
 etat0=transpose(etat0);
 etat1=[x(:) y(:) z(:)];
 etat1=transpose(etat1);
 
 for s=1:1:100
   for i=2:1:N
    diff=etat0(:,i)-etat0(:,1);
       val=sqrt(diff(1)*diff(1)+diff(2)*diff(2)+diff(3)*diff(3));
    if (val<=r1+r2)
        grad(:,1)=sign(etat0(:,i)-etat0(:,0));
         [grad(1,i),grad(2,i),grad(3,i)]=Gradient2(etat0(:,1),etat0(:,i),grad(:,1),r1,r2);
    end
    if(abs(etat0(1,i))>=1)
       grad(1,i)=-grad(1,i); 
    end
     if(abs(etat0(2,i))>=1)
       grad(2,i)=-grad(2,i); 
     end
     if(abs(etat0(3,i))>=1)
       grad(3,i)=-grad(3,i); 
     end
    for j=i:1:N
         diff=etat0(:,i)-etat0(:,j);
           val=sqrt(diff(1)*diff(1)+diff(2)*diff(2)+diff(3)*diff(3));
        if (2*r2 >= val)
            grad(:,j)=[sign(etat0(1,i)-etat0(1,j)) sign(etat0(2,i)-etat0(2,j)) sign(etat0(3,i)-etat0(3,j)) ];
           [a,b,c]=Gradient2(etat0(:,i),etat0(:,j),grad(:,j),r2,r2);
           grad(1,i)=sign(a);
           grad(2,i)=sign(b);
           grad(3,i)=sign(c);
%         
         etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
        end
    end
      if(abs(etat0(1,1))>=1)
       grad(1,1)=-grad(1,1); 
      end
     if(abs(etat0(2,1))>=1)
       grad(2,1)=-grad(2,1); 
     end
     if(abs(etat0(3,1))>=1)
       grad(3,1)=-grad(3,1); 
     end
   etat1(:,1)=etat0(:,1)+grad(:,1)*betta;
   etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
   etat0=etat1; 
%    pause(h);
   end
 
%    [x,y,z] = sphere;
%    
%    figure (1)
%     surf(x,y,z)

     hold on 

     plot(etat0(1,1),etat0(2,1),'or','MarkerSize',30,'MarkerFaceColor','b')
     
     for i=2:1:N+1
%        plot(etat0(1,1),etat0(2,1),'or','MarkerSize',10,'MarkerFaceColor','b')
       plot(etat0(1,i),etat0(2,i),'or','MarkerSize',5,'MarkerFaceColor','r')
       axis([-2 2 -2 2])
       pause(.02)
       
     end
     clf
%     plot(etat0(1,1),etat0(2,1), 'r.', 'MarkerSize',40)
%      plot(etat0(1,2),etat0(2,2), 'r.', 'MarkerSize', 30)
 end
%      myworld.big.translation=[grad(1,1)*betta grad(2,1)*betta grad(3,1)*betta]
%      myworld.b1.translation=[grad(1,2)*alpha grad(2,2)*alpha grad(3,2)*alpha]
%      myworld.b2.translation=[grad(1,3)*alpha grad(2,3)*alpha grad(3,3)*alpha]
%      myworld.b3.translation=[grad(1,4)*alpha grad(2,4)*alpha grad(3,4)*alpha]
%      myworld.b4.translation=[grad(1,5)*alpha grad(2,5)*alpha grad(3,5)*alpha]
%      myworld.b5.translation=[grad(1,6)*alpha grad(2,6)*alpha grad(3,6)*alpha]
%      myworld.b6.translation=[grad(1,7)*alpha grad(2,7)*alpha grad(3,7)*alpha]
