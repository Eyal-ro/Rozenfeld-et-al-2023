%% Figure S5
clc;clear;
load('FigS5.mat');

figure;
shadedErrorBar([1:size(all_flies_all_odors_GH146,2)],nanmean(all_flies_all_odors_GH146,1),[nanstd(all_flies_all_odors_GH146)/sqrt(size(all_flies_all_odors_GH146,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(all_flies_all_odors_Cac,2)],nanmean(all_flies_all_odors_Cac,1),[nanstd(all_flies_all_odors_Cac)/sqrt(size(all_flies_all_odors_Cac,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('euclidean distance');ylabel('Dist (a.u)');
h = zeros(2, 1);xlim([3 50]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');