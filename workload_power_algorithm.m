close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% WORKLOAD %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [0.1
0.2
0.3
0.4
0.5
0.6
0.7
0.8
0.9
1
1.1];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [0.477309
0.817044
1.493936
2.006709
2.524337
3.348869
3.281431
7.188627
12.248362
23.655307
46.597591];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [5.349877
10.413532
15.46041
20.353196
25.527182
30.168927
35.644513
42.301386
46.727052
53.392006
56.19132];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [0.936767
1.935994
2.434003
3.169575
4.446785
6.499508
6.569805
6.671604
10.580507
6.381757
9.767744];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [
1.956209
3.735056
7.504255
11.899256
18.26586
23.495389
30.826227
39.828153
45.637649
53.392006
56.19132
];
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
X = categorical(workload);
plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
ylim([0 60]);

legend('COVS', 'Default', 'DVFS', 'Offloading', 'Location','northwest');

xlabel("Workload");
ylabel('Power');

set(gca,'fontsize',12);
% title('Power');

saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_algorithm'+'.pdf');