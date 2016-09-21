%% Monte Carlo Sample Example
% Topic: This is a code about Monte Carlo sample.
%
% Author: xiaobing Li

%% Introduction
% ʵ�����ؿ������
%
% ʵ�ַ�ʽ�� ��������������Բ�����,���� ${\pi}$ �Ĺ���
%
% ���ؿ�������Ļ���˼�룺�����������ѡ�񣬻�Խ��Խ�ӽ�����ֵ
%
%%
% $circle\_area=square\_area\frac{\mathrm{count}}{\mathrm{trial}\_{num}}$

%% Parameters
% trial_num: ��������������������Ȳ�����Ĵ���
%
% circle_area: ����Բ�����,ȡ�뾶Ϊ1���򷵻�Ϊ ${\pi}$ �Ĺ���
%
% square_area: �����ε����
%
% count: ������Բ�еĵ�Ĵ���
%% Function
function [circle_area,probability] = monte_carlo_sample(trial_num)
trial_num=1000;
%% figure
close all;
figure(1);
hold on;
% square
% ���㣺(-1,-1),(-1,1),(1,1),(1,-1) �߳���a=2
a=2;
start_x=-1;
start_y=-1;
vertex_x=[start_x,start_x,start_x+a,start_x+a,start_x];
vertex_y=[start_y,start_y+a,start_y+a,start_y,start_y];
plot(vertex_x,vertex_y,'b-','LineWidth',3);
% circle
% �����꣬����r������theta
r=1;    
theta=linspace(0,2*pi,100);
circle_x=r*cos(theta);
circle_y=r*sin(theta);
plot(circle_x,circle_y,'r-','LineWidth',3);
%% monte_carlo_sample
count=0;
square_area=a^2;
for i=1:trial_num
    figure(1);
    x=a*rand()+start_x;
    y=a*rand()+start_y;
    if x^2+y^2-r<0
        count=count+1;
        scatter(x,y,100,'g','fill','MarkerEdgeColor','r','LineWidth',1);
    else
        scatter(x,y,100,'black','fill','MarkerEdgeColor','r','LineWidth',1);
    end
    probability=count/trial_num;
    circle_area=square_area*probability;
%     display(circle_area);
end
%% finish and display some information
grid;
hold off;
display(circle_area);
display('monte_carlo_sample_success. 2016/9/20');% ��ʾ��Ϣ
end

