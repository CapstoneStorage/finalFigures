close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
0.3
0.4
];
power =[
2.113982
3.876613
4.905618
];
offloading =[
0.66
0.8
0.83
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
% ylim([0, 1.2])
% power = power / 34.925583;
xlabel('Workload');
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
%ylab1.Position(1) = -0.3;

yyaxis right
%yticks(0:0.2:1)
%yticklabels(0:0.2:1)
plot(X, offloading, 'Color', 'r', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
ylabel("Offloading Ratio");
set(gca,'fontsize', 12, 'YColor', 'k');
%ylab2 = get(gca, 'ylabel');
%set(ylab2, 'VerticalAlignment', 'middle');
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
% ylim([0,1])


legend('Power', 'Offloading Ratio','Location', 'northwest');
hold off

%title('COVS');

saveas(figure(1),foldername+'/figure_workload_power_offloadingtest'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_offloadingtest'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_offloadingtest'+'.pdf');
