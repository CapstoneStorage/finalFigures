close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "C:\Users\inslab\Desktop\figures\220516";
% mkdir(foldername);
%% SCORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
score = [
10	500	250	10
11	498	250	13
12	496	250	16
13	494	250	19
14	492	250	22
15	490	250	25
16	488	250	28
17	486	250	31
18	484	250	34
19	482	250	37
20	480	250	40
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

plot(score(:,1), score(:,2), 'Color', 'b','LineWidth', 1);
plot(score(:,1), score(:,3), 'Color', 'r', 'LineWidth', 1);
plot(score(:,1), score(:,4), 'Color', 'g', 'LineWidth', 1);

% ylim([0 50]);

legend('Min', 'Average', 'Max', 'Location','northwest');
xlabel("Generations");
ylabel('Score');
%title('Power')

set(gca,'fontsize',12);

saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.png');
saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.fig');
saveas(figure(1),foldername+'/figure_genetic_algorithm'+'.pdf');