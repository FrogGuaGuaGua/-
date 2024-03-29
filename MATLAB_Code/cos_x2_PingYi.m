% $ y=\cos(x^2) $��$ y=\cos(x^2+1) $��������һ��������ͼ�����ƽ�ƣ�
% �ܷ�õ�����һ������ͼ��
clc
close all
syms x; 

figure 
hold on
% grid off
% axis off
axis([-6 6 -1.2 1.8])

fplot(cos(x.^2),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(cos(x.^2+1),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')


plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
plot([-100 100],[1.8 1.8],'k','Linewidth',0.3)
plot([6 6],[-100 100],'k','Linewidth',0.3)
legend('$ y=\cos(x^2) $','$y=\cos(x^2+1) $','interpreter','latex')
