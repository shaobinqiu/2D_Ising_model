clear 
a=[1 0;0 -1];
A=[unique(load('B9_s_ij_s_i.txt'),'rows');6,1];
A=unique([A;A*a],'rows');
x1=A(:,1);
y1=A(:,2);
dt1 = delaunayTriangulation(x1,y1);
k1= convexHull(dt1);
plot(dt1.Points(:,1),dt1.Points(:,2), '.r', 'markersize',10); hold on;  
plot(dt1.Points(k1,1),dt1.Points(k1,2), 'r'); figure;  

B=[unique(load('B16_s_ij_s_i.txt'),'rows');6,1];
B=unique([B;B*a],'rows');
x2=B(:,1);
y2=B(:,2);
dt2 = delaunayTriangulation(x2,y2);
k2= convexHull(dt2);
plot(dt2.Points(:,1),dt2.Points(:,2), '.b', 'markersize',10); hold on;  
plot(dt2.Points(k2,1),dt2.Points(k2,2), 'b'); hold off;  
title('2D\_B9&16')
xlabel('sum(Si*Sj)/N');
ylabel('sum(Si)/N');
legend('B9','B9','B16','B16');