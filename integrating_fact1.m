function solution=integrating_fact1(m,n)
syms x y c;
n1=m*x+n*y;
IF=1/n1;
m_new=m*IF;
n_new=n*IF;
solution=exact(m_new,n_new);