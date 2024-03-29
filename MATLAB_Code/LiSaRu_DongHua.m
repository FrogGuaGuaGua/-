clc
close all

vout=VideoWriter(strcat('F:\pr\�����綯��\sub-6.2--.mp4'),'MPEG-4');
vout.FrameRate=25;
open(vout);

fig=figure;
% set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gcf,'unit','centimeters','position',[2,2,22,20])

syms t
for w1=1
%     for w2=2
        for phi=0:0.1:6.28
            
            subplot(2,2,1)
            fplot(cos(w1*t),sin((w1+1)*t+phi),'Meshdensity',500,'linewidth',5)
            axis off
            axis equal
            axis([-1.1 1.1 -1.1 1.1])
            
            subplot(2,2,2)
            fplot(cos(w1*t),sin((w1+2)*t+phi),'Meshdensity',500,'linewidth',5)
            axis off
            axis equal
            axis([-1.1 1.1 -1.1 1.1])
            
            subplot(2,2,3)
            fplot(cos(w1*t),sin((w1+3)*t+phi),'Meshdensity',500,'linewidth',5)
            axis off
            axis equal
            axis([-1.1 1.1 -1.1 1.1])
%             xlabel('����������������');
            
            subplot(2,2,4)
            fplot(cos(w1*t),sin((w1+4)*t+phi),'Meshdensity',500,'linewidth',5)
            axis off
            axis equal
            axis([-1.1 1.1 -1.1 1.1])
%             xlabel('����������������');
            
%             sgtitle('����������������') 
            sgtitle(strcat('$x=\cos(\omega_1 t), y=\sin(\omega_2 t+',num2str(phi),')$'),'interpreter','latex','fontsize',20) 
%       title(strcat('$x=\cos(',num2str(w1),'t), y=\sin(',num2str(w2),'t+',num2str(phi),')$'),'interpreter','latex','fontsize',20)
%      xlabel('����������������');
%      xlabel('��������һ����ά����˿������˵��������ת������գһգ�۾����ٹ۲���ת���򣬺͸ղŵĽ���һ����')
     writeVideo(vout,frame2im(getframe(fig)));
%      pause(0.01)
     clf
        end
%     end
end
close all
close(vout)