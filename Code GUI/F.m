function dy=F(t,y,aa)

dy = zeros(2,1);    % a column vector
dy(1) = 2*y(1)-aa*y(1)*y(2);
dy(2) = -y(2)+aa*y(1)*y(2);
