clc;
clear all;

b2 = [1;1000]; %Costs associated with vaccines 
m = [0.01;0.03;0.1];
c_2_a = [0;50000];

for i_m=1:2
    for j_m=1:2
        for k_m=1:3
                 load (['c_1_a_' num2str(c_2_a(i_m,1)) '_b2_' num2str(b2(j_m,1)) '_m_' num2str(m(k_m,1)) '.mat']);
                 figure(6*(i_m-1) + 3*(j_m-1) + k_m);
                 hold on
                 plot((g_o(:, 1 )),'g','linewidth',1.5);
                 plot((g_o(:, 2)),'c','linewidth',1.5);
                 plot((g_o(:, 3)),'b','linewidth',1.5);
                 plot((g_o(:, 4)),'m','linewidth',1.5);
                 plot((g_o(:, 5 )),'y','linewidth',1.5);
                set(0,'DefaultTextInterpreter', 'latex')
                title('Countrys category','Interpreter','latex')
                xlim([0 365]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Countrys category','Interpreter','latex');

         saveas(figure(6*(i_m-1) + 3*(j_m-1) + k_m),['c_1_a_' num2str(c_2_a(i_m,1)) '_b2_' num2str(b2(j_m,1)) '_m_' num2str(m(k_m,1)) '_Category.eps'], 'epsc')         
        end
    end
end