close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [1000
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
26000
29000
32000];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [34.267809
27.589762
22.722738
21.480791
14.213099
12.703695
12.248362
12.48079
10.958372
11.344215
11.052571
11.050091
10.065284
11.09705];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052
46.727052];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [35.622645
28.863332
26.334704
22.853404
13.495982
9.851873
10.580507
9.547102
10.958372
7.844277
7.330523
8.078988
8.020544
9.563838];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [ 45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649
45.637649];
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
X = categorical(network);
plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 7, 'LineWidth', 1);

% xlim([0 1]);
ylim([0 60]);

legend('COVS', 'Default', 'DVFS', 'Offloading', 'Location','northeast', 'NumColumns', 2);

xlabel("Network");
ylabel('Power');

set(gca,'fontsize',12);
% title('Power');

saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.pdf');