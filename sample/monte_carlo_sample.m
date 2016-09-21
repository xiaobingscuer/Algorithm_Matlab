%% Monte Carlo Sample Example
% Topic: This is a code about Monte Carlo sample.
%
% Author: xiaobing Li

%% Introduction
% 实现蒙特卡洛采样
%
% 实现方式： 计算正方形内切圆的面积,或者 ${\pi}$ 的估计
%
% 蒙特卡洛采样的基本思想：不断随机均匀选择，会越来越接近最优值
%
%%
% $circle\_area=square\_area\frac{\mathrm{count}}{\mathrm{trial}\_{num}}$

%% Parameters
% trial_num: 在正方形区域中随机均匀采样点的次数
%
% circle_area: 返回圆的面积,取半径为1，则返回为 ${\pi}$ 的估计
%
% square_area: 正方形的面积
%
% count: 出现在圆中的点的次数
%% Function
function [circle_area,probability] = monte_carlo_sample(trial_num)
trial_num=1000;
%% figure
close all;
figure(1);
hold on;
% square
% 顶点：(-1,-1),(-1,1),(1,1),(1,-1) 边长：a=2
a=2;
start_x=-1;
start_y=-1;
vertex_x=[start_x,start_x,start_x+a,start_x+a,start_x];
vertex_y=[start_y,start_y+a,start_y+a,start_y,start_y];
plot(vertex_x,vertex_y,'b-','LineWidth',3);
% circle
% 极坐标，极径r，极角theta
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
display('monte_carlo_sample_success. 2016/9/20');% 显示信息
end

