% Test für Github 

%Seed setzen damit man seine Ergebnisse wieder erzeugen kann.
rng(1);

%Anzahl der Agenten
N = 100;
%Meinungsbildungsfaktor
mu = 0.5;
%Meinungsdifferenzgrenze
tao = 0.4;
%Anzahl der Timesteps
t=20000000;
%Erzeuge unsere Agenten mit werten zufällig im Intervall [-1,1]
x= erzeugex(N);
%Array für die 2 Agenten die miteinander kommunizieren (4 Koordinaten)
kom=zeros(2,1);
%Nachbarschaft angeben. 1=Moore ; 2=Von-Neumann
ne=1;

%Schleife die zu jedem Zeitpunkt immer 2 Agenten miteinander agieren
%lassen.
    for i=1:t
        kom=waehlex(N);
        switch ne
            case 1
                kom2 = Moorenachbar(kom(1,1),kom(2,1),N,1);
            case 2
                kom2 = VonNeumann(kom(1,1),kom(2,1),N,1);
        end
        a = Meinungsbildung( x(kom(1,1),kom(2,1)) , x(kom2(1,1),kom2(2,1)) , mu , tao);
        x(kom(1,1),kom(2,1)) = a(1,1);
        x(kom2(1,1),kom2(2,1)) = a(1,2);    
    end

HeatMap(x);
