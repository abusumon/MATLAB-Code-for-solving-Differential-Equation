function solution=integrating_fact2(m,n)
syms x y c;
n2=m*x-n*y;
IF=1/n2;
m_new=m*IF;
n_new=n*IF;
solution=exact(m_new,n_new);