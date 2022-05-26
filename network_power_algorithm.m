close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRIALS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% NETWORK %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
30
40
];
%% OURS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ours = [
18.1986867
15.0796942
];
%% OFFLOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Offloading = [
23.0477133
19.2296799
];
%% DVFS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DVFS = [
34.2153286
34.2153286
];
%% DEFAULT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = [
37.4118328
37.4118328
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(network);

Ours = Ours / 37.4118328;
D = D / 37.4118328;
Offloading =  Offloading / 37.4118328;
DVFS = DVFS / 37.4118328;

plot(X, Ours, 'Color', 'r', 'Marker', '*', 'Markersize', 9, 'LineWidth', 1);
plot(X, Offloading, 'Color', 'g', 'Marker', 'diamond', 'Markersize', 9, 'LineWidth', 1);
plot(X, DVFS, 'Color', 'b', 'Marker', '^', 'Markersize', 9, 'LineWidth', 1);
plot(X, D, 'Color', 'k', 'Marker', 'o', 'Markersize', 9, 'LineWidth', 1);

% xlim([0 1]);
ylim([0 1.2]);

lgd = legend('TOVS','Offloading', 'DVFS', 'Default', 'Location','northwest', 'NumColumns', 1);
set(lgd, 'fontsize', 14)
xlabel("Network (Mbps)");
ylabel('Relative Energy');

set(gca,'fontsize',14);
% title('Power');

saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_algorithm'+'.pdf');
