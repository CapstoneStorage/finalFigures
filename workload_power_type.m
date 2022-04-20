close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total = [0.936767
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
%% CPU POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu = [0.661874
1.486273
1.867474
2.105843
3.390448
5.323024
5.114503
4.887225
8.506027
6.381757
7.579428];
%% NETWORK POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [0.274893
0.449722
0.566528
1.063732
1.056337
1.176484
1.455302
1.784379
2.07448
2.104496
2.188316];
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
% X = reordercats(X, downlink);
plot(X, total, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, cpu, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, network, 'Color', 'b', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

ylim([0 50]);

legend('Total', 'CPU', 'Network', 'Location','northwest');
xlabel("Workload");
ylabel('Power');
%title('Power')

set(gca,'fontsize',12);

saveas(figure(1),foldername+'/figure_workload_power_type_off'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_type_off'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_type_off'+'.pdf');
