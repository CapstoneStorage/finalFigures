close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
algorithm = ["Default", "DVFS", "Offloading", "COVS"];
power = [
    15.46041	0;
    7.504255	0;
    1.867474	0.566528;
    0.972928	0.521008;
];
power = [
    25.527182	0;
    18.26586	0;
    3.390448	1.056337;
    1.623044	0.901293;
];
power = [
    35.644513	0;
    30.826227	0;
    5.114503	1.455302;
    1.919873	1.361558;
];
power = [
    46.727052	0;
    45.637649	0;
    8.506027	2.07448;
    10.70813	1.540232;
];
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "../figures/220405";
% mkdir(foldername);
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(algorithm);
X = reordercats(X, algorithm);
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
legend('Active', 'Network','Location', 'northeast');
ylabel('Power');

hold off

title('Workload: 0.9');

saveas(figure(1),foldername+'/figure_power_algorithm_abc'+'.png');
saveas(figure(1),foldername+'/figure_network_algorithm_abc'+'.fig');
saveas(figure(1),foldername+'/figure_network_algorithm_abc'+'.pdf');