clc
path1='F:\pr\����ƹ����\������vsƤƤϺ-����.mp4';
% path1='D:\�ҵ��ĵ�D\��е��PPT�����ز�\��е�۵���.mp4';
v=VideoReader(path1);
vout=VideoWriter('F:\pr\����ƹ����\vout��ɫ.mp4','MPEG-4');
% vout.VideoCompressionMethod='H.264';
vout.FrameRate=25;
open(vout);
logname='log';

% n=1;
% while hasFrame(v)
%     frame=readFrame(v);
%     graypicture=rgb2gray(frame);
%     edgepic=edge(graypicture,logname);
%     imwrite(edgepic,strcat('F:\pr\����ƹ����\',logname,'\',num2str(n),'.jpg'));
% %     imshow(edgepic);
%     n=n+1;
% end

% imwrite(imcomplement(imread(strcat('F:\pr\����ƹ����\',logname,'\','1','.jpg'))),strcat('F:\pr\����ƹ����\',logname,'\��','1','.jpg'))
n=1;
while n<=4649
%     writeVideo(vout,imread(strcat('F:\pr\����ƹ����\',logname,'\',num2str(n),'.jpg')));
    writeVideo(vout,imcomplement(imread(strcat('F:\pr\����ƹ����\',logname,'\',num2str(n),'.jpg'))));
    n=n+1;
end
close(vout);

% MATLAB
% v=VideoReader(path1);
% while hasFrame(v)
% imwrite(edge(rgb2gray(readFrame(v)),'log'),path2);
% end
% writeVideo(vout,imread(path2));
