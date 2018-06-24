function [ ] = heatmapErzeugen( x )

n= length(x);

for i=1:n
    for j=1:n
        rectangle('Position',[(j-1) (n-i) 1 1]','FaceColor',[0 x(i,j) x(i,j)])
    end
end

end