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
cpufreq = [7,  26,  35,  32
10,  16,  37,  37
10,  27,  28,  35
8,  21,  24,  47
12,  28,  26,  34
12,  24,  25,  39
18,  16,  23,  43
19,  17,  25,  39
12,  21,  28,  39
22,  23,  22,  33
14,  20,  25,  41
17,  19,  24,  40];
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

b = bar(X, cpufreq, 'stacked', 'FaceColor', 'flat');

colorSet = parula(4);
for i = 1:4
    b(i).FaceColor = 'flat';
    b(i).CData = colorSet(i, :);
end
xtips = b.XEndPoints;
ytips = b.YEndPoints;
xlabel('Network');

set(gca,'fontsize',12, 'YColor', 'k');
legend('1', '0.5', '0.25', '0.125','Location', 'northeast');
ylabel('CPU Frequency (%)');

hold off

title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_cpufreq_50'+'.png');
saveas(figure(1),foldername+'/figure_network_cpufreq_50'+'.fig');
saveas(figure(1),foldername+'/figure_network_cpufreq_50'+'.pdf');