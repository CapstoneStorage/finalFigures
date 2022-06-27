close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\User\Desktop\figures\220626";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
network = [
30
40
];
power =[
18.1986867
15.0796942
];
offloading =[
0.73
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
power = power / 18.1986867;
yyaxis left
yticks(0:0.2:1)
yticklabels(0:0.2:1)
b = bar(X, power, 'FaceColor', [0.4 0.4 0.4]);
% bar(X, cpufreq, 'stacked', 'CData', parula(4));
xtips = b.XEndPoints;
ytips = b.YEndPoints;
ylabel('Relative Energy');
set(gca,'fontsize', 14, 'YColor', 'k');
%ylab1 = get(gca, 'ylabel');
%set(ylab1, 'VerticalAlignment', 'middle');
%ylab1.Position(1) = -1;

yyaxis right
%yticks(0:0.2:1)
%yticklabels(0:0.2:1)
plot(X, offloading, 'Color', 'r', 'Marker', '*', 'Markersize', 12, 'LineWidth', 1);
ylabel('Offloading Ratio');
set(gca,'fontsize', 14, 'YColor', 'k');
%ylab2 = get(gca, 'ylabel');
%set(ylab2, 'VerticalAlignment', 'middle');
% ylim([0.1 1.0]);
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
%ylab2.Position(1) = 13.7;
%ylim([0.5 1])

lgd = legend('Power', 'Offloading Ratio','Location', 'northwest');
set(lgd, 'fontsize', 14);
set(gca,'fontsize', 14);
hold off

%title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_power_offloading'+'.png');
saveas(figure(1),foldername+'/figure_network_power_offloading'+'.fig');
saveas(figure(1),foldername+'/figure_network_power_offloading'+'.pdf');
