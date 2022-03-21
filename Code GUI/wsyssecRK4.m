function [y,t]=wsyssecRK4(F,x0,y0,a,b,N,aa)
h=(b-a)/N;
y = zeros(N,2);
y(1,:)=[x0 y0 ];t(1)=a;
for i=1:N
    t(i+1)=a+i*h;
    
    k1=feval(F,t(i),y(i,:),aa);
    
        
    k2=feval(F,t(i)+h/2,y(i,:)+(h/2).*k1',aa);
    

    k3=feval(F,t(i)+h/2,y(i,:)+(h/2).*k2',aa);
    

      
    k4=feval(F,t(i)+h,y(i,:)+h.*k3',aa);
    
    
 
    y(i+1,:)=y(i,:)+(h/6)*(k1+2*k2+2*k3+k4)';
    

    
end


    
