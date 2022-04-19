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
power =[0.477309
0.817044
1.493936
2.006709
2.524337
3.348869
3.281431
7.188627
12.248362
23.655307
46.597591];
offloading =[0.87
0.87
0.8
0.85
0.76
0.8
0.82
0.73
0.62
0.48
0.19];
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
xlabel('Workload');
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
%set(ylab2, 'rotation', 270, 'VerticalAlignment', 'middle');
%xh = get(gca, 'ylabel');
%p = get(xh, 'position');
%p(2) = 2*p(2);
%set(xh, 'position', p);
ylab2.Position(1) = 13.12;


legend('Power', 'Offloading Ratio','Location', 'northeast');
hold off

%title('COVS');

saveas(figure(1),foldername+'/figure_workload_power_offloading_covs'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_offloading_covs'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_offloading_covs'+'.pdf');
