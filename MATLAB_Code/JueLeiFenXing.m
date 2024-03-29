clc
close all

a=[0,0.90,0.2,-0.15];
b=[0,0.04,-0.26,0.28];
c=[0,-0.04,0.23,0.26];
d=[0.16,0.85,0.22,0.24];
e=[0,0,0,0];
% e=[0.5,0.075,0.4,0.575];
f=[0,1.6,1.6,0.44];
% f=[0,0.18,0.045,-0.086];
p=[0.01,0.85,0.07,0.07];

n=100000;%����10�����������һ��ͼ
randomp=rand(n,1); %���������ÿһ��������ϵ��

vout=VideoWriter(strcat('F:\pr\ާ�����\ާ��_',num2str(vid),'.mp4'),'MPEG-4');
vid=vid+1;
vout.FrameRate=25;
open(vout);
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')

for pk=1:60
    pk
%     p=rand(1,4);
%     p=p/norm(p);
%     p(1)=p(1) + pk*0.0005;
%     p(2)=p(2) - pk*0.0002;
%     p(3)=p(3) + pk*0.0001;
%     p(4)=p(4) + pk*0.0001;
    a(2)=a(2) - pk*0.0003;
    a(3)=a(3) - pk*0.00005;
    a(4)=a(4) + pk*0.00005;
    x=zeros(n,1); y=zeros(n,1); %��x,yԤ��Ϊn��0,�Ȱѿռ�ռ�ϡ�
    x(1)=0; y(1)=0;
    
    for k=2:n %�����������һ������
        prob=randomp(k); %ȡ����

        if prob<p(1) %����С��p�����1���ĵ㰴������Ĺ�����з���任
        x(k)=a(1)*x(k-1)+b(1)*y(k-1)+e(1);
        y(k)=c(1)*x(k-1)+d(1)*y(k-1)+f(1);
        elseif prob<p(1)+p(2) %����С��p����ǰ2�����ĺ͵ĵ㰴������Ĺ�����з���任
        x(k)=a(2)*x(k-1)+b(2)*y(k-1)+e(2);
        y(k)=c(2)*x(k-1)+d(2)*y(k-1)+f(2);
        elseif prob<p(1)+p(2)+p(3)%����С��p����ǰ3�����ĺ͵ĵ㰴������Ĺ�����з���任
        x(k)=a(3)*x(k-1)+b(3)*y(k-1)+e(3);
        y(k)=c(3)*x(k-1)+d(3)*y(k-1)+f(3);
        else%����С��p����ǰ4�����ĺ͵ĵ㰴������Ĺ�����з���任
        x(k)=a(4)*x(k-1)+b(4)*y(k-1)+e(4);
        y(k)=c(4)*x(k-1)+d(4)*y(k-1)+f(4);
        end
    end
    
    plot(x(1:n),y(1:n),'k.','markersize',1) ;%����任����Ժ����Щ���ӡ����Ļ�ϡ�
    axis equal
    axis off
%     title(['���� p=',num2str(p)])   
    title(['a=',num2str(a)]) 
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    
    clf
end
close all
close(vout)

% title('����������������','FontSize',12);

% ÿһ��[a,b,e,c,d,f]�ܰ�x0,y0���뷽�̺����n�Σ��䵽n���ط�������a,b,c,d
% ������С����ת��e,f����ƽ�ơ�a��b��c��d������0-1֮�������Ҫ��Ȼ�Ϳ��ܰ�
% xn�䵽����Զ��e,f���Դ���1�������ı任�з���任��
% һ��[a,b,e,c,d,f]ͨ���޷��γɷ���ͼ������һ��p�Ǹ��ʣ������䵽��һ��ĵ�
% ռȫ����İٷֱȡ�������4��Ϊ����