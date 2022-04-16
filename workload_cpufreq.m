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
cpufreq = [15,  15,  32,  38
18,  13,  29,  40
15,  27,  29,  29
13,  22,  29,  36 
18,  16,  23,  43
13,  23,  29,  35
20,  19,  28,  33
28,  23,  30,  19 
31,  26,  24,  19
58,  23,  12,  7
99,  1,  0,  0 ];
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

b = bar(X, cpufreq, 'stacked', 'FaceColor', 'flat');

colorSet = parula(4);
for i = 1:4
    b(i).FaceColor = 'flat';
    b(i).CData = colorSet(i, :);
end
xtips = b.XEndPoints;
ytips = b.YEndPoints;
xlabel('workload');

plot(X, offloading);

set(gca,'fontsize',12, 'YColor', 'k');
legend('1', '0.5', '0.25', '0.125','Location', 'southeast');
ylabel('CPU Frequency (%)');

hold off

title('COVS');

saveas(figure(1),foldername+'/figure_workload_cpufreq_offloading_covs'+'.png');
saveas(figure(1),foldername+'/figure_workload_cpufreq_offloading_covs'+'.fig');
saveas(figure(1),foldername+'/figure_workload_cpufreq_offloading_covs'+'.pdf');