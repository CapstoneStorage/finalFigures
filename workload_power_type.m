close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\User\Desktop\figures\220626";
% mkdir(foldername);
%% WORKLOAD POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
workload = [
0.2
];

%% TOTAL POWER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
power = [
    2.7786972	0.5537546	1.4193747	0.8055677
];

%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
X = categorical(workload);
% X = reordercats(X, downlink);
%total = total / 34.925583;
%cpu = cpu / 34.925583;
%network =  network / 34.925583;
%memory = memory / 34.925583;
power = power/13.9278219;

plot(X, power(:,1), 'Color', 'r', 'Marker', '*', 'Markersize', 9, 'LineWidth', 1);
plot(X, power(:,2), 'Color', 'k', 'Marker', 'o', 'Markersize', 9, 'LineWidth', 1);
plot(X, power(:,3), 'Color', 'b', 'Marker', '^', 'Markersize', 9, 'LineWidth', 1);
plot(X, power(:,4), 'Color', 'g', 'Marker', 'diamond', 'Markersize', 9, 'LineWidth', 1);

% ylim([0 50]);

lgd = legend('Total', 'CPU', 'Memory', 'Network',  'Location','northwest');
set(lgd, 'fontsize', 14);
xlabel("Workload");
%title('Power')
ylabel('Relative Energy');

set(gca,'fontsize', 14);

saveas(figure(1),foldername+'/figure_workload_power_type'+'.png');
saveas(figure(1),foldername+'/figure_workload_power_type'+'.fig');
saveas(figure(1),foldername+'/figure_workload_power_type'+'.pdf');
