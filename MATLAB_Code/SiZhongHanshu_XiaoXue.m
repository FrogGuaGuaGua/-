% ������������$ y=kx $��һ�κ���$ y=kx+b $��$ k $��б�ʣ�$ b $�нؾ࣬
% �������������ǽؾ�Ϊ0��һ�κ�����Ҳ����һ�κ���������������(Ҳ��˫����)��
% $ y=\dfrac{k}{x} $�����κ�����$ y=ax^2+bx+c $��
clc
close all
syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,22,5])

subplot(1,4,1) 
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2*x,'k','Linewidth',1.5)
title('���������� y=2x ')
grid minor


subplot(1,4,2)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2*x+3,'k','Linewidth',1.5)
title('һ�κ��� y=2x+3 ')
grid minor

subplot(1,4,3)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2./x,'k','Linewidth',1.5,'showpoles','off')
title('����������(˫����) xy=2 ')
grid minor

subplot(1,4,4)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) -x.^2/2+2*x+5,'k','Linewidth',1.5)
title('���κ���(������) y=-0.5x^2+2x+5 ')
grid minor

