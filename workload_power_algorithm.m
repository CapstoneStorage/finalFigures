close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% WORKLOAD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
0.3
0.4
];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [
2.113982
3.876613
4.905618
    ];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [
5.130247
6.441264
7.677357 
];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [
5.730237
8.50689
15.018219
];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [
9.899907
14.963144
21.68468
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
%Ours = Ours / 48.648751;
%D = D / 48.648751;
%Offloading =  Offloading / 48.648751;
%DVFS = DVFS / 48.648751;
plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
% ylim([0 60]);

legend('ECVS', 'Default', 'DVFS', 'Offloading', 'Location','northwest');

xlabel("Workload");
ylabel('Power');

set(gca,'fontsize',12);
% title('Power');

saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.pdf');
