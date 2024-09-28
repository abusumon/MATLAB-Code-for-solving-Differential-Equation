tic;
clc;
syms x y c t;
m=input('Enter the coefficient of dx: ');
n=input('Enter the coefficient of dy: ');
if m==0 || n==0
    disp('This equation invloves zero.');
    return;
end
m_dy=simplify(diff(m,y));
n_dx=simplify(diff(n,x));
tot1=(n_dx-m_dy)/n;
tot2=(n_dx-m_dy)/m;
if m_dy==n_dx
    disp('The equation is exact differential equation.');
    solution=exact(m,n);
    disp(solution);
    for i=1:10
        p_sol=subs(solution,c,i);
        fimplicit(p_sol);
        hold on;
    end
else
    disp('The equation is not an exact differential equation.');
    if m*x+n*y~=0
        sol1=integrating_fact1(m,n);
        disp(sol1);
        for i=1:10
            p_sol=subs(sol1,c,i);
            fimplicit(p_sol);
        hold on;
        end
    elseif m*x+n*y==0 && m*x-n*y~=0
            sol2=integrating_fact2(m,n);
            disp(sol2);
            for i=1:10
                p_sol=subs(sol2,c,i);
                fimplicit(p_sol);
                hold on;
            end
    elseif m*x+n*y~=0 && m*x-n*y~=0 && diff(tot1,y)==0
            sol3=integrating_fact3(m,n,m_dy,n_dx);
            disp(sol3);
            for i=1:10
                p_sol=subs(sol3,c,i);
                fimplicit(p_sol);
                hold on;
            end
    elseif m*x+n*y~=0 && m*x-n*y~=0 && diff(tot1,y)~=0 && diff(tot2,x)==0
            sol4=integrating_fact4(m,n,m_dy,n_dx);
            disp(sol4);
            for i=1:10
                p_sol=subs(sol4,c,i);
                fimplicit(p_sol);
                hold on;
            end
    else
        disp('Exact differential equation cannot be derived');
    end
end
toc;
        



