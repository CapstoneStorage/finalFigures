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
cpufreq = [
16 31 42 11
16 18 34 32
14 23 29 34
16 14 40 30
16 19 28 37
];
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
xlabel('Network (Mbps)');

set(gca,'fontsize',12, 'YColor', 'k');
legend('1', '0.5', '0.25', '0.125','Location', 'northeast');
ylabel('CPU Frequency (%)');

hold off

title('Workload: 0.5');

saveas(figure(1),foldername+'/figure_network_cpufreq'+'.png');
saveas(figure(1),foldername+'/figure_network_cpufre'+'.fig');
saveas(figure(1),foldername+'/figure_network_cpufreq'+'.pdf');
