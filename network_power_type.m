close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
net = [
30
40
50
];
%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total = [
18.1986867
15.0796942
13.1634346
];
%% CPU POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu = [
3.8199662
3.0248118
2.5492294
];
%% MEMORY POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
memory = [
2.5510399
2.5515078
2.55607
];
%% NETWORK POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
11.8276805
9.5033748
8.0581353
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(net);

total = total / 18.1986867;
cpu = cpu / 18.1986867;
network =  network / 18.1986867;
memory = memory / 18.1986867;

plot(X, total, 'Color', 'r', 'Marker', '*', 'Markersize', 9, 'LineWidth', 1);
plot(X, cpu, 'Color', 'k', 'Marker', 'o', 'Markersize', 9, 'LineWidth', 1);
plot(X, memory, 'Color', 'b', 'Marker', 'diamond', 'Markersize', 9, 'LineWidth', 1);
plot(X, network, 'Color', 'g', 'Marker', '^', 'Markersize', 9, 'LineWidth', 1);

% xlim([0 1]);
% ylim([0 40]);

lgd = legend('Total', 'CPU', 'Memory', 'Network',  'Location','northeast');
set(lgd, 'fontsize', 14);
xlabel("Network (Mbps)");
ylabel('Relative Energy');

set(gca,'fontsize', 14);
% title('Workload: 0.7');

saveas(figure(1),foldername+'/figure_network_power_type'+'.png');
saveas(figure(1),foldername+'/figure_network_power_type'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_type'+'.pdf');
