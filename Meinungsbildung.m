function [ y ] = Meinungsbildung( x,z , mu, tao )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if( abs(x - z) > tao)
    y=[x,z];
else
   y(1,1)=(x + (mu*(z-x)));
   y(1,2)=(z + (mu*(x-z)));
end

end

