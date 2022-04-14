close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
net = [1000
1400
1700
2000
5000
8000
11000
14000
17000
20000
23000
26000];
%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total = [11.812171
9.227931
8.231378
6.764741
4.148114
3.224598
2.524337
2.364924
1.711428
1.444842
1.962017
1.574438];
%% CPU POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu = [5.471093
3.211692
3.306247
2.35922
2.048021
1.919582
1.623044
1.600164
1.044035
0.833972
1.498232
1.148923];
%% NETWORK POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [6.341078
6.016239
4.925131
4.405522
2.100093
1.305016
0.901293
0.76476
0.667393
0.61087
0.463785
0.425516];
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "../figures/220405";
% mkdir(foldername);
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(net);
plot(X, total, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, cpu, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, network, 'Color', 'b', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
ylim([0 40]);

legend('Total', 'CPU', 'Network', 'Location','northeast');

xlabel("Network");
ylabel('Power');

set(gca,'fontsize',12);
title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_power_type_covs_50'+'.png');
saveas(figure(1),foldername+'/figure_network_power_type_covs_50'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_type_covs_50'+'.pdf');