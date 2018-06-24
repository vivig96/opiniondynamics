function [ xneu ] = Moorenachbar( x1 , x2, N , k)
% MOORE
%
y=zeros(2,1);
xneu=zeros(2,1);
  
    while((y(1,1)==0 && y(2,1)==0) || (x1+y(1,1)) <=0 || (x1+y(1,1)) >= (N+1) || (x2+y(2,1)) <=0 || (x2+y(2,1)) >= (N+1))
        y=round((-k)+(2*k*(rand(2,1))));
    end
    
    xneu(1,1)=x1+y(1,1);
    xneu(2,1)=x2+y(2,1);
end

