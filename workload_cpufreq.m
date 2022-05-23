close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
0.3
];
cpufreq = [
6.9	    20.1	27.6	45.4
10.6	28	    38.4	23
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);

b = bar(X, cpufreq, 'stacked', 'FaceColor', 'flat');

colorSet = parula(4);
for i = 1:4
    b(i).FaceColor = 'flat';
    b(i).CData = colorSet(i, :);
end
xtips = b.XEndPoints;
ytips = b.YEndPoints;
xlabel('Workload');
ylabel('CPU Frequency (%)');
% plot(X, offloading);

set(gca,'fontsize',14, 'YColor', 'k');
lgd = legend('1', '0.5', '0.25', '0.125','Location', 'northwest');
set(lgd, 'fontsize', 14)


hold off

% title('Network: 80');

saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.png');
saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.fig');
saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.pdf');
