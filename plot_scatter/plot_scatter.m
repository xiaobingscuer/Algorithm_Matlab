
%% plot_scatter
% Topic: This is a simple way to use plot,scatter,and hold.
% Author: LiXiaoBing
% email: lxb115416@163.com

%% clear and set time
clear all;               % ������б���       
clc;                     % ��������д���
tic;                     % ����ʱ��

%% the fist figure��circle 
theta=linspace(0,2*pi,100);     % Բ�ļ�������� ���� theta
r=1;                            % Բ�ļ�������� ���� r
x=r*cos(theta);                 % Բ��ֱ������ϵ���� x��
y=r*sin(theta);                 % Բ��ֱ������ϵ���� y��
s = linspace(10,100,length(x)); % ɢ��ͼ�и��Ĵ�С linespace���������10Ϊ��㣬100Ϊ�յ㣬��x�ĳ��ȸ�
c = linspace(1,0,length(x));    % ɢ��ͼ�и������ɫ����
figure(1);                         % ��ͼ��
scatter(x,y,s,c,'fill','MarkerEdgeColor','r','LineWidth',1); % ����άɢ��ͼscatter 
                                % ����fill ���Ե��ɫMarkerEdgeColor �߿�LineWidth
%% the second figure: circle
r=2;                              
x1=r*cos(theta);
y1=r*sin(theta);
s1 = linspace(100,10,length(x));
c1 = linspace(0,1,length(x));
figure(2);
scatter(x1,y1,s1,c1,'fill','MarkerEdgeColor','r','LineWidth',1);

%% the third figure: squre
x2=[-1,-1,1,1,-1];  % �ı����ĸ������ x�����
y2=[-1,1,1,-1,-1];  % �ı����ĸ������ y�����
figure(3);
plot(x2,y2,'b-*','LineWidth',5,'MarkerSize',10,'MarkerEdgeColor','r');
% b-color is blue, - is the solid line, * is the mark of vertex

%% the last: combine over all figure
figure(4);
hold on;        % ��ʼ�ص����е�ͼ
scatter(x,y,s,c,'fill','MarkerEdgeColor','r','LineWidth',1);
scatter(x1,y1,s1,c1,'fill','MarkerEdgeColor','r','LineWidth',1);
plot(x2,y2,'b-*','LineWidth',5,'MarkerSize',10,'MarkerEdgeColor','r');
scatter(0,0,100,1,'fill','MarkerEdgeColor','r','LineWidth',1); % a dot in the center of circle
hold off;      % �����ص�
% zoom(2)
grid on;       % ����

%% clear time and display some information
toc; 
display('plot_scatter');