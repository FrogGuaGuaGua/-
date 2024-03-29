clc
close all
%л����˹������
%������ʼ3��
Tripots=rand(3,2);
% Tripots=[0,1;1*sin(2*pi/3),1*cos(2*pi/3);1*sin(4*pi/3),1*cos(4*pi/3)];

%����SierpinskiTriangle�����ε���
N=2^17;%����1000����
SierpinskiTriangle=zeros(N+3,2);
SierpinskiTriangle(1:3,:)=Tripots;
%����ο���
ReferencePoint=rand(1,2);

for j=1:N
    %ѡȡ�ο���������ǵ���е㣬��Ϊ�µĲο���
    ReferencePoint=(Tripots(randi([1,3],1),:)+ReferencePoint)/2;
    %��¼��SierpinskiTriangle��
    SierpinskiTriangle(3+j,:)=ReferencePoint;
end

scatter(SierpinskiTriangle(:,1),SierpinskiTriangle(:,2),0.1,'filled')
axis off
