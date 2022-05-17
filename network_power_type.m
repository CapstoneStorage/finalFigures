close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
net = [
10
20
30
40
50
];
%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total = [
21.147943
15.880218
11.91594
9.928706
8.03074
];
%% CPU POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu = [
8.710881
4.39641
2.674283
2.643978
1.480901
];
%% MEMORY POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
memory = [
2.247842
2.804661
2.133584
2.156888
1.544052
];
%% NETWORK POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
10.189219
8.679147
7.108073
5.127841
5.005787
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(net);

%total = total / 23.592769;
%cpu = cpu / 23.592769;
%network =  network / 23.592769;
%memory = memory / 23.592769;

plot(X, total, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, cpu, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, network, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, memory, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
% ylim([0 40]);

legend('Total', 'CPU', 'Network', 'Memory',  'Location','northeast');

xlabel("Network (Mbps)");
ylabel('Power');

set(gca,'fontsize',12);
title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_power_type'+'.png');
saveas(figure(1),foldername+'/figure_network_power_type'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_type'+'.pdf');
