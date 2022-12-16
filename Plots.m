clc;
clear all;

b2 = [1;1000]; %Costs associated with vaccines 
m = [0.01;0.03;0.1];
c_1_a = [0;50000;100000;];

for i=1:3
    for j=1:2
        for k=1:3
            
                 load (['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_' num2str(m(k,1)) '.mat']);
                 figure(i*j+k-1);
                 hold on
                 plot((u(:, 1)),'g','linewidth',1.5);
                 plot((u(:, 2)),'c','linewidth',1.5);
                 plot((u(:, 3)),'b','linewidth',1.5);
                 plot((u(:, 4)),'m','linewidth',1.5);
                 plot((u(:, 5)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')

                clf
         end
    end
end
                 
                figure(i*j+k-1)
                hold on
                plot((psi_s(1, : )),'g','linewidth',1.5);
                plot((psi_s(2, : )),'c','linewidth',1.5);
                plot((psi_s(3, : )),'b','linewidth',1.5);
                plot((psi_s(4, : )),'m','linewidth',1.5);
                plot((psi_s(5, : )),'y','linewidth',1.5);
 
                set(gca,'TickLabelInterpreter','latex');
                title('Rate of vaccination','Interpreter','latex');
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Rate of vaccination','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Psi.epsc'])

                clf
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(1, : )),'g','linewidth',1.5);
                plot((x{1,2}(1, : )),'c','linewidth',1.5);
                plot((x{1,3}(1, : )),'b','linewidth',1.5);
                plot((x{1,4}(1, : )),'m','linewidth',1.5);
                plot((x{1,5}(1, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Susceptible','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Susceptible.epsc'])

                clf
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(2, : )),'g','linewidth',1.5);
                plot((x{1,2}(2, : )),'c','linewidth',1.5);
                plot((x{1,3}(2, : )),'b','linewidth',1.5);
                plot((x{1,4}(2, : )),'m','linewidth',1.5);
                plot((x{1,5}(2, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Infected','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Infected.epsc'])
                
                clf
                
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(3, : )),'g','linewidth',1.5);
                plot((x{1,2}(3, : )),'c','linewidth',1.5);
                plot((x{1,3}(3, : )),'b','linewidth',1.5);
                plot((x{1,4}(3, : )),'m','linewidth',1.5);
                plot((x{1,5}(3, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Detected','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Detected.epsc'])
                
                clf
                
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(4, : )),'g','linewidth',1.5);
                plot((x{1,2}(4, : )),'c','linewidth',1.5);
                plot((x{1,3}(4, : )),'b','linewidth',1.5);
                plot((x{1,4}(4, : )),'m','linewidth',1.5);
                plot((x{1,5}(4, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Acutely','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Acutely.epsc'])

                clf
                
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(5, : )),'g','linewidth',1.5);
                plot((x{1,2}(5, : )),'c','linewidth',1.5);
                plot((x{1,3}(5, : )),'b','linewidth',1.5);
                plot((x{1,4}(5, : )),'m','linewidth',1.5);
                plot((x{1,5}(5, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Recovered','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Recovered.epsc'])
                 clf
                 
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(6, : )),'g','linewidth',1.5);
                plot((x{1,2}(6, : )),'c','linewidth',1.5);
                plot((x{1,3}(6, : )),'b','linewidth',1.5);
                plot((x{1,4}(6, : )),'m','linewidth',1.5);
                plot((x{1,5}(6, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Extinct','Interpreter','latex')
                %title(['Infected state against time for ThZ = ' num2str(ThZ(jj + 1))]);
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Extinct.epsc'])

                clf
                figure(i*j+k-1);
                hold on
                plot((x{1,1}(7, : )),'g','linewidth',1.5);
                plot((x{1,2}(7, : )),'c','linewidth',1.5);
                plot((x{1,3}(7, : )),'b','linewidth',1.5);
                plot((x{1,4}(7, : )),'m','linewidth',1.5);
                plot((x{1,5}(7, : )),'y','linewidth',1.5);

                set(gca,'TickLabelInterpreter','latex');
                set(gca, 'YTickLabel', get(gca,'YTick') * 100);
                xlim([0 365]);
                title('Vaccinated','Interpreter','latex')
                lgd = legend ('0','3000','6000', '9000','12000','15000', '20000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex')
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
                saveas(figure(i*j+k-1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1))  '_Vaccinated.epsc'])

                clf
      
                 
                
                