clc;
clear all;

b2 = [1;1000]; %Costs associated with vaccines 
m = [0.01;0.03;0.1];
c_1_a = 0 ; %Costs associated with acutely symptomatic population
c_1_a_val1 = 50000;
c_1_a_val_ = 100000;

                 load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);
                 figure(1);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
                saveas(figure(1),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])

                 clf
  
                 figure(111);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
                saveas(figure(111),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
                 clf

                  figure(112);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
                saveas(figure(112),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
                 clf

                 figure(113);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
                saveas(figure(113),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
                 clf

                 figure(114);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
                saveas(figure(114),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
                 clf


                 figure(115);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
                saveas(figure(115),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
                 clf

                 figure(116);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
                saveas(figure(116),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
                 clf

                 figure(117);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
                %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vaccinated'],'epsc')
                saveas(figure(117),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Vaccinated.jpeg'])
                clf

                

                 load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(2);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(2),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf

              
  

                 figure(211);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(211),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(212);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(212),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(213);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(213),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(214);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(214),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(215);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(215),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(216);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(216),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(217);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(217),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


               load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(3);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(3),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf
  
                 figure(311);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(311),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(312);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(312),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(313);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(313),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(314);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(314),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(315);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(315),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(316);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(316),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf


                figure(317);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(317),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf
        
               load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

                 figure(4);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(4),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf        

              
                 figure(411);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(411),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
               clf

                 figure(412);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(412),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
               clf

                 figure(413);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(413),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
               clf


                 figure(414);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(414),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
               clf


                 figure(415);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(415),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
               clf


                 figure(416);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(416),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
               clf


                figure(417);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(417),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Vacinated.jpeg'])
               clf
               
                load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(5);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(5),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       
             
                 figure(511);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(511),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(512);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(512),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(513);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(513),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(514);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(514),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(515);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(515),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(516);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(516),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(517);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(517),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


               load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(6);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(6),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf     

              

                 figure(611);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(611),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(612);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(612),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(613);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(613),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(614);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(614),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(615);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(615),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(616);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(616),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf


                figure(617);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(617),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf


                load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

                 figure(7);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(7),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf     

                 figure(711);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
                saveas(figure(711),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
                 clf



                  figure(712);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
                saveas(figure(712),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
                 clf

                 figure(713);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
                saveas(figure(713),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
                 clf

                 figure(714);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
                saveas(figure(714),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
                 clf


                 figure(715);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
                saveas(figure(715),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
                 clf

                 figure(716);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
                saveas(figure(716),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
                 clf

                 figure(717);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
                %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vaccinated'],'epsc')
                saveas(figure(717),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Vaccinated.jpeg'])
                clf

                 load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(8);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(8),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf

              
  

                 figure(811);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(811),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(812);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(812),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(813);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(813),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(814);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(814),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(815);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(815),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(816);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(816),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(817);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(817),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


                load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(9);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(9),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf
 
                 figure(911);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(911),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(912);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(912),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(913);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(913),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(914);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(914),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(915);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(915),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(916);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(916),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf


                figure(917);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(917),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf
        
               load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

                 figure(10);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(10),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf    

             
  

                 figure(1011);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1011),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
               clf

                 figure(1012);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1012),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
               clf

                 figure(1013);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1013),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
               clf


                 figure(1014);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1014),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
               clf


                 figure(1015);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1015),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
               clf


                 figure(1016);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1016),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
               clf


                figure(1017);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1017),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Vacinated.jpeg'])
               clf
               
                load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(11);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(11),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       
              

                 figure(1111);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1111),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(1112);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1112),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(1113);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1113),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(1114);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1114),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(1115);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1115),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(1116);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1116),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(1117);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1117),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


               load (['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(12);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(12),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf     

                 figure(1211);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1211),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(1212);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1212),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(1213);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1213),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(1214);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1214),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(1215);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1215),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(1216);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1216),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf


                figure(1217);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1217),['c_1_a_' num2str(c_1_a_val1(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf
               
                 
               load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

                 figure(13);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(13),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf       
               
                                figure(1317);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
                saveas(figure(1317),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
                 clf

                  figure(1318);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
                saveas(figure(1318),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
                 clf

                 figure(1313);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
                saveas(figure(1313),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
                 clf

                 figure(1314);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
                saveas(figure(1314),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
                 clf


                 figure(1315);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
                saveas(figure(1315),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
                 clf

                 figure(1316);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
                saveas(figure(1316),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
                 clf

                 figure(1317);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);
                 set(0,'DefaultTextInterpreter', 'latex')
                 set(gca,'TickLabelInterpreter','latex');
                 xlim([0 365]);
                 title('Intensity of measures','Interpreter','latex')
          %      title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                 lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
        
       
                %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vaccinated'],'epsc')
                saveas(figure(1317),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_Vaccinated.jpeg'])
                clf

                 load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(14);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(14),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf

                 figure(1417);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1417),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(1418);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1418),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(1413);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1413),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(1414);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1414),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(1415);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1415),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(1416);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1416),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(1417);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1417),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


                load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(15);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(15),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf


                 figure(1517);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1517),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(1518);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1518),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(1513);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1513),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(1514);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1514),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(1515);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1515),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(1516);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1516),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf


                figure(1517);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1517),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf
        
               load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

                 figure(16);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(16),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf        

                 figure(1617);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1617),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Susceptible.jpeg'])
               clf

                 figure(1618);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1618),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Infected.jpeg'])
               clf

                 figure(1613);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1613),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Detected.jpeg'])
               clf


                 figure(1614);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1614),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Acutely.jpeg'])
               clf


                 figure(1615);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1615),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Recovered.jpeg'])
               clf


                 figure(1616);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1616),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Extinct.jpeg'])
               clf


                figure(1617);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1617),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_Vacinated.jpeg'])
               clf
               
                load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

                 figure(17);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(17),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       
              

                 figure(1717);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1717),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Susceptible.jpeg'])
               clf

                 figure(1718);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1718),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Infected.jpeg'])
               clf

                 figure(1713);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1713),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Detected.jpeg'])
               clf


                 figure(1714);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1714),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Acutely.jpeg'])
               clf


                 figure(1715);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1715),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Recovered.jpeg'])
               clf


                 figure(1716);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1716),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Extinct.jpeg'])
               clf


                figure(1717);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1717),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_Vacinated.jpeg'])
               clf


               load (['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

                 figure(18);
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
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
               saveas(figure(18),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf     

                 figure(1817);
                 hold on
                 plot((x{1,1}(1, :)),'g','linewidth',1.5);
                 plot((x{1,2}(1, :)),'c','linewidth',1.5);
                 plot((x{1,3}(1, :)),'b','linewidth',1.5);
                 plot((x{1,4}(1, :)),'m','linewidth',1.5);
                 plot((x{1,5}(1, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Susceptible'],'epsc')
               saveas(figure(1817),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Susceptible.jpeg'])
               clf

                 figure(1818);
                 hold on
                 plot((x{1,1}(2, :)),'g','linewidth',1.5);
                 plot((x{1,2}(2, :)),'c','linewidth',1.5);
                 plot((x{1,3}(2, :)),'b','linewidth',1.5);
                 plot((x{1,4}(2, :)),'m','linewidth',1.5);
                 plot((x{1,5}(2, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Infected'],'epsc')
               saveas(figure(1818),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Infected.jpeg'])
               clf

                 figure(1813);
                 hold on
                 plot((x{1,1}(3, :)),'g','linewidth',1.5);
                 plot((x{1,2}(3, :)),'c','linewidth',1.5);
                 plot((x{1,3}(3, :)),'b','linewidth',1.5);
                 plot((x{1,4}(3, :)),'m','linewidth',1.5);
                 plot((x{1,5}(3, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Detected'],'epsc')
               saveas(figure(1813),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Detected.jpeg'])
               clf

                 figure(1814);
                 hold on
                 plot((x{1,1}(4, :)),'g','linewidth',1.5);
                 plot((x{1,2}(4, :)),'c','linewidth',1.5);
                 plot((x{1,3}(4, :)),'b','linewidth',1.5);
                 plot((x{1,4}(4, :)),'m','linewidth',1.5);
                 plot((x{1,5}(4, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Acutely'],'epsc')
               saveas(figure(1814),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Acutely.jpeg'])
               clf


                 figure(1815);
                 hold on
                 plot((x{1,1}(5, :)),'g','linewidth',1.5);
                 plot((x{1,2}(5, :)),'c','linewidth',1.5);
                 plot((x{1,3}(5, :)),'b','linewidth',1.5);
                 plot((x{1,4}(5, :)),'m','linewidth',1.5);
                 plot((x{1,5}(5, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Recovered'],'epsc')
               saveas(figure(1815),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Recovered.jpeg'])
               clf


                 figure(1816);
                 hold on
                 plot((x{1,1}(6, :)),'g','linewidth',1.5);
                 plot((x{1,2}(6, :)),'c','linewidth',1.5);
                 plot((x{1,3}(6, :)),'b','linewidth',1.5);
                 plot((x{1,4}(6, :)),'m','linewidth',1.5);
                 plot((x{1,5}(6, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Extinct'],'epsc')
               saveas(figure(1816),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Extinct.jpeg'])
               clf

                figure(1817);
                 hold on
                 plot((x{1,1}(7, :)),'g','linewidth',1.5);
                 plot((x{1,2}(7, :)),'c','linewidth',1.5);
                 plot((x{1,3}(7, :)),'b','linewidth',1.5);
                 plot((x{1,4}(7, :)),'m','linewidth',1.5);
                 plot((x{1,5}(7, :)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Percentage of population','Interpreter','latex');
       
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_Vacinated'],'epsc')
               saveas(figure(1817),['c_1_a_' num2str(c_1_a_val_(1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_Vacinated.jpeg'])
               clf

                load (['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);
                figure(999);
                 hold on
                 plot((g_total(:, 1)),'g','linewidth',1.5);
                 plot((g_total(:, 2)),'c','linewidth',1.5);
                 plot((g_total(:, 3)),'b','linewidth',1.5);
                 plot((g_total(:, 4)),'m','linewidth',1.5);
                 plot((g_total(:, 5)),'y','linewidth',1.5);

                set(0,'DefaultTextInterpreter', 'latex')
                set(gca,'TickLabelInterpreter','latex');
                xlim([0 365]);
                title('Intensity of measures','Interpreter','latex')
          %     title(['Strategy control against time for b2 = ' num2str(b2(i,1))]);
                lgd = legend ('0','2000','4000', '8000','12000','Interpreter','latex');
                title(lgd,'Cost of death','Interpreter','latex') 
                xlabel('Days','Interpreter','latex');
                ylabel('Intensity of measures','Interpreter','latex');
        
        
               %saveas(figure(1),['c_1_a_' num2str(c_1_a(i,1)) '_b2_' num2str(b2(j,1)) '_m_'  num2str(m(k,1)) '_U'],'epsc')
                saveas(figure(999),['c_1_a_' num2str(c_1_a(1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])

                
                