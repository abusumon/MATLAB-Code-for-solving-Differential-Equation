function solution=integrating_fact4(m,n,m_dy,n_dx)
syms x y c;
tot=(n_dx-m_dy)/m;
IF=exp(int(tot,y));
m_new=m*IF;
n_new=n*IF;
solution=exact(m_new,n_new);