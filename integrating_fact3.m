function solution=integrating_fact3(m,n,m_dy,n_dx)
syms x y c;
tot=(n_dx-m_dy)/n;
IF=exp(int(tot,x));
m_new=m*IF;
n_new=n*IF;
solution=exact(m_new,n_new);