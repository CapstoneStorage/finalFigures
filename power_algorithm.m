close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220514";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
algorithm = ["Default", "DVFS", "Offloading", "ECVS"];

power = [
    39.941684	4.29885	0
    38.138081	4.300411	0
    6.6357	3.032793	4.128705
    2.895614	3.459691	3.837787
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(algorithm);
X = reordercats(X, algorithm);
% power02 = power02 /10.355834;
b = bar(X, power, 'stacked',  'FaceColor', 'flat');

colorSet = parula(2);
for i = 1:2
    b(i).FaceColor = 'flat';
    b(i).CData = colorSet(i, :);
end
xtips = b.XEndPoints;
ytips = b.YEndPoints;
xlabel('Algorithms');

set(gca,'fontsize',12, 'YColor', 'k');
legend('CPU', 'Memory', 'Network','Location', 'northeast');
ylabel('Power');

hold off

title('Workload: 0.8');

saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.png');
saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.fig');
saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.pdf');
