close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
26000];
power =[34.267809
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
11.050091];
offloading =[0.53
0.65
0.65
0.64
0.62
0.62
0.62
0.62
0.62
0.62
0.62
0.63];
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
xlabel('Network');
yyaxis left
b = bar(X, power, 'FaceColor', [0.4 0.4 0.4]);
% bar(X, cpufreq, 'stacked', 'CData', parula(4));
xtips = b.XEndPoints;
ytips = b.YEndPoints;
ylabel('Power');
set(gca,'fontsize', 12, 'YColor', 'k');
ylab1 = get(gca, 'ylabel');
set(ylab1, 'VerticalAlignment', 'middle');
ylab1.Position(1) = -1;

yyaxis right
plot(X, offloading, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
ylabel("Ratio");
set(gca,'fontsize', 12, 'YColor', 'k');
ylab2 = get(gca, 'ylabel');
set(ylab2, 'VerticalAlignment', 'middle');
ylim([0.1 0.9]);
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
ylab2.Position(1) = 14.2;


legend('Power', 'Offloading Ratio','Location', 'northwest');
hold off

title('Workload: 0.9');

saveas(figure(1),foldername+'/figure_network_power_offloading_90'+'.png');
saveas(figure(1),foldername+'/figure_network_power_offloading_90'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_offloading_90'+'.pdf');
