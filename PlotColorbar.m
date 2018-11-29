clc
close all
clear all
load('DIV5.mat');
fig1=figure;
colormap(RGB);
left=200; bottom=100 ; width=10 ; height=500;
pos=[left bottom width height];
axis off
h=colorbar;
h.Position=[0.5 0.1 0.2 0.8];
set(fig1,'OuterPosition',pos) 