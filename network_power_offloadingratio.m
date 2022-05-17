close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
10
20
30
40
50
];
power =[
21.147943
15.880218
11.91594
9.928706
8.03074
];
offloading =[
0.37
0.55
0.67
0.66
0.76
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(network);
xlabel('Network (Mbps)');
%power = power / 23.592769;
yyaxis left
%yticks(0:0.2:1)
%yticklabels(0:0.2:1)
b = bar(X, power, 'FaceColor', [0.4 0.4 0.4]);
% bar(X, cpufreq, 'stacked', 'CData', parula(4));
xtips = b.XEndPoints;
ytips = b.YEndPoints;
ylabel('Power');
set(gca,'fontsize', 12, 'YColor', 'k');
%ylab1 = get(gca, 'ylabel');
%set(ylab1, 'VerticalAlignment', 'middle');
%ylab1.Position(1) = -1;

yyaxis right
%yticks(0:0.2:1)
%yticklabels(0:0.2:1)
plot(X, offloading, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
ylabel("Offloading Ratio");
set(gca,'fontsize', 12, 'YColor', 'k');
%ylab2 = get(gca, 'ylabel');
%set(ylab2, 'VerticalAlignment', 'middle');
% ylim([0.1 1.0]);
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
%ylab2.Position(1) = 13.7;
%ylim([0 1])

legend('Power', 'Offloading Ratio','Location', 'northwest');
hold off

title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_power_offloading'+'.png');
saveas(figure(1),foldername+'/figure_network_power_offloading'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_offloading'+'.pdf');
