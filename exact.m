function solution=exact(m,n)
syms x y c;
n1=diff(m,y);
n2=int(m,x);
n3=int((n-n2),y);
n4=int(m,x);
solution=n3+n4==c;