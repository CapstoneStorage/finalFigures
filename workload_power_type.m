close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
0.3
0.4
];
%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total = [
2.113982
3.876613
4.905618
];
%% CPU POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu = [
0.642497
1.220493
1.657057
];
%% MEMORY POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
memory = [
0.821906
1.649539
1.34733
];
%% NETWORK POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
0.641685
1.584577
2.337795 
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
% X = reordercats(X, downlink);
%total = total / 34.925583;
%cpu = cpu / 34.925583;
%network =  network / 34.925583;
%memory = memory / 34.925583;

plot(X, total, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, cpu, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, network, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, memory, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% ylim([0 50]);

legend('Total', 'CPU', 'Network', 'Memory',  'Location','northwest');
xlabel("Workload");
ylabel('Power');
%title('Power')

set(gca,'fontsize',12);

saveas(figure(1),foldername+'/figure_workload_power_type'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_type'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_type'+'.pdf');
