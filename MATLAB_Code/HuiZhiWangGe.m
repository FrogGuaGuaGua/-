% ��������
close all
h = figure;
set(gcf,'unit','centimeters','position',[2,0,40,32])
ax = axes('Parent',h);      % ��hΪ���������£��������꣬���Ҹ������Ϊ��ǰ����
                        % ���� plot �Ȼ�ͼ�������Ե�ǰ����ΪĿ��������
ax.YAxis.Visible = 'off';  % ����y�᲻�ɼ�
ax.XAxis.Visible = 'off';  % Ĭ������ on �����ɼ�
axis equal
% axis off
axis([-56 56 -46 46])
grid minor
% grid on
set(gca,'minorgridcolor','k','minorGridalpha',0.5)