function [ x ] = erzeugex( N )
%Erzeugen eines Arrays der l�nge N mit zuf�lligen eintr�gen im Intervall
%[-1,1]
%   F�r das Intervall [a,b] bekommt man mit der Funktion:
%   a + (b-a)*rand(N,1)
%   die gew�nschten Zahlen.
x=zeros(N);
for i=1:N
x(:,i)=(-1)+(2*rand(N,1));
end

end

