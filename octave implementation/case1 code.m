i=2;
chaser(1).x=input('Enter the x-coordinate of the chaser');
chaser(1).y=input('Enter the y-coordinate of the chaser');
hold on
 plot(chaser(1).x,chaser(1).y,'b*');
target(1).x=input('Enter the x-coordinate of the target');
target(1).y=input('Enter the y-coordinate of the target');
hold on
 plot(target(1).x,target(1).y,'r*');
target(2).x=input('Enter the x-coordinate of the target');
target(2).y=input('Enter the y-coordinate of the target');
hold on
 plot(target(2).x,target(2).y,'r*');
m=(target(i).y-target(1).y)/(target(i).x-target(1).x);
 %d = m * 10;
if(m<=1)
  target(3).x=target(i).x+1;
  target(3).y=target(i).y+m;
else
  target(3).y=target(i).y+1;
  target(3).x=target(i).x+(1/m);
end
hold on
  plot(target(3).x,target(3).y,'r*');
%i++; 
%end
%plot([target.x],[target.y]); 
%plot([target.x],[target.y],'o'); 
x1=chaser(1).x;
y1=chaser(1).y;
x2=target(3).x;
y2=target(3).y;
n=(y2-y1)/(x2-x1);
v=input('Enter velocity of chaser');
c=0;
a=n*n+1;
b=n*c-n*y1-x1;
d=y1*y1-v*v+x1*x1-(2*c*y1)+c*c;
xa=(-b+sqrt(b*b-(4*a*d)))/(2*a);
xb=(-b-sqrt(b*b-(4*a*d)))/(2*a);
ya=n*((-b+sqrt(b*b-(4*a*d)))/(2*a))+c;
yb=n*((-b-sqrt(b*b-(4*a*d)))/(2*a))+c;
if((y2-ya)<(y2-yb))
 chaser(2).x=xa;
 chaser(2).y=ya;
else
 chaser(2).x=xb;
 chaser(2).y=yb;
end
hold on
 plot(chaser(2).x,chaser(2).y,'r*');
%plot([chaser.x],[chaser.y],'o'); 
