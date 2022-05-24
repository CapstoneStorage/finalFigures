close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
];
power =[
2.7786972
4.4289406
];
offloading =[
0.723
0.73
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
% ylim([0, 1.2])
power = power / 13.9278219;
xlabel('Workload');
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
%ylab1.Position(1) = -0.3;

yyaxis right
%yticks(0:0.2:1)
%yticklabels(0:0.2:1)
plot(X, offloading, 'Color', 'r', 'Marker', '*', 'Markersize', 12, 'LineWidth', 1);
ylabel("Offloading Ratio");
set(gca,'fontsize', 14, 'YColor', 'k');
%ylab2 = get(gca, 'ylabel');
%set(ylab2, 'VerticalAlignment', 'middle');
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
%ylim([0.6 0.9])


lgd = legend('Power', 'Offloading Ratio','Location', 'northwest');
set(lgd, 'fontsize', 14);
hold off

%title('COVS');

saveas(figure(1),foldername+'/figure_workload_power_offloading'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_offloading'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_offloading'+'.pdf');
