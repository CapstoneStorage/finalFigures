close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220626";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
algorithm = ["Baseline", "DVFS", "Offloading", "Co-TOMS"];

power = [
  39.7037994 4.010533	0 
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(algorithm);
X = reordercats(X, algorithm);
% power = power / (39.7037994 + 4.010533);
b = bar(X, power, 'stacked',  'FaceColor', 'flat');

colorSet = parula(2);
for i = 1:2
    b(i).FaceColor = 'flat';
    b(i).CData = colorSet(i, :);
end
xtips = b.XEndPoints;
ytips = b.YEndPoints;
xlabel('Algorithms');
ylabel('Relative Energy');

set(gca,'fontsize',14, 'YColor', 'k');
lgd = legend('CPU', 'Memory', 'Network','Location', 'northeast');
set(lgd, 'fontsize', 14);

hold off

%title('Workload: 0.8');

saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.png');
saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.fig');
saveas(figure(1),foldername+'/figure_power_algorithm_08_120'+'.pdf');
