close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% WORKLOAD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
0.3
];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [
2.7786972
4.4289406
    ];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [
4.9359804
6.8695846
];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [
5.3697136
8.9835099
];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [
9.5279598
15.3098447
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
Ours = Ours / 48.8730934;
D = D / 48.8730934;
Offloading =  Offloading / 48.8730934;
DVFS = DVFS / 48.8730934;
plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 9, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 9, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 9, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 9, 'LineWidth', 1);

% xlim([0 1]);
% ylim([0 60]);

lgd = legend('TOVS', 'Offloading', 'DVFS', 'Default', 'Location','northwest');
set(lgd, 'fontsize', 14)
xlabel("Workload");
ylabel('Relative Energy');

set(gca,'fontsize',14);
% title('Power');

saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.pdf');
