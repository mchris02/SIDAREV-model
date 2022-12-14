clc;
clear all;

c_1_a = [0;50000;100000]; %Costs associated with acutely symptomatic population
b2 = [1;1000]; %Costs associated with vaccines 
m = [0.01;0.03;0.1];


                 load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

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
                saveas(figure(1),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])

                clf
                 load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

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
                saveas(figure(1),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
        
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
                saveas(figure(1),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])

                clf

                 load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(2),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf

               load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(3),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf

        
               load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

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
               saveas(figure(4),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf        

               load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(5),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       

               load (['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(6),['c_1_a_' num2str(c_1_a(1,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf       
             
                load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

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
               saveas(figure(7),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf       
               
               
                 load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(8),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       
              
               load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(9),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf       

              load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

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
               saveas(figure(10),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf       
          
               load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(11),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf   


                 load (['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(12),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf   


               load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '.mat']);

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
               saveas(figure(13),['c_1_a_' num2str(c_1_a(2,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf       
               
               
                 load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(14),['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf       
              
               load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(15),['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(1,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf       

              load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '.mat']);

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
               saveas(figure(16),['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(1,1)) '_U.jpeg'])
               clf       
          
               load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '.mat']);

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
               saveas(figure(17),['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(2,1)) '_U.jpeg'])
               clf   


            load (['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '.mat']);

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
               saveas(figure(18),['c_1_a_' num2str(c_1_a(3,1)) '_b2_' num2str(b2(2,1)) '_m_' num2str(m(3,1)) '_U.jpeg'])
               clf   

       
    
                 
   

