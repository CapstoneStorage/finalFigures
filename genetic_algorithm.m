close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\user\Desktop\figures\220517\final";
% mkdir(foldername);
%% SCORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
score = [
1 49.271882 50.618716 52.150044 0.893200 0.927229 0.958485
10 49.271882 50.493902 51.174881 0.905716 0.930106 0.958485
20 49.271882 50.387717 51.001720 0.912943 0.932271 0.958485
30 49.271882 50.280787 50.892715 0.913853 0.934661 0.958485
40 49.271882 50.180101 50.741783 0.917370 0.936864 0.958485
50 49.197462 50.072299 50.658406 0.917623 0.938959 0.958485
];
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
hold on
grid on
box on
% X = categorical(generation);

%plot(X, total, 'Color', 'b', 'Marker', '*', 'Markersize', 7, 'LineWidth', 1);
%plot(X, cpu, 'Color', 'r', 'Marker', 'o', 'Markersize', 7, 'LineWidth', 1);
%plot(X, network, 'Color', 'g', 'Marker', '^', 'Markersize', 7, 'LineWidth', 1);

plot(score(:,1), score(:,2), 'Color', 'b','LineWidth', 2);
plot(score(:,1), score(:,4), 'Color', 'g', 'LineWidth', 2);
plot(score(:,1), score(:,3), 'Color', 'r', 'LineWidth', 2);

% ylim([0 50]);

lgd = legend('Min', 'Max', 'Average', 'Location','northeast');
set(lgd, 'fontsize', 14);
xlabel("Generation");
ylabel('Score');
%title('Power')

set(gca,'fontsize',14);

saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.pdf');
