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
0.5
];
cpufreq = [
18 17 25 40 
11 24 22 43 
15 20 22 43 
17 23 26 34 
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

% plot(X, offloading);

set(gca,'fontsize',12, 'YColor', 'k');
legend('1', '0.5', '0.25', '0.125','Location', 'southeast');
ylabel('CPU Frequency (%)');

hold off

title('Network: 80');

saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.png');
saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.fig');
saveas(figure(1),foldername+'/figure_workload_cpufreq'+'.pdf');
