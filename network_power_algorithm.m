close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
10
20
30
40
50
];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [
21.147943
15.880218
11.91594
9.928706
8.03074
];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [
27.383554
19.905769
16.05967
13.830458
12.52954
];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [
21.208926
21.208926
21.208926
21.208926
21.208926
];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [
26.583037
26.583037
26.583037
26.583037
26.583037
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(network);

%Ours = Ours / 31.527809;
%D = D / 31.527809;
%Offloading =  Offloading / 31.527809;
%DVFS = DVFS / 31.527809;

plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
% ylim([0 60]);

legend('ECVS', 'Default', 'DVFS', 'Offloading', 'Location','northeast', 'NumColumns', 2);

xlabel("Network (Mbps)");
ylabel('Power');

set(gca,'fontsize',12);
% title('Power');

saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.pdf');
