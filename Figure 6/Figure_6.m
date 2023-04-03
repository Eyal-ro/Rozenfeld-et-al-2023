%% Figure 6B
clc;clear;
load('Fig6B.mat');

figure;
shadedErrorBar([1:size(QF_449_all_flies_IAA,2)],nanmean(QF_449_all_flies_IAA,1),[nanstd(QF_449_all_flies_IAA)/sqrt(size(QF_449_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_IAA,2)],nanmean(QF_Cac_all_flies_IAA,1),[nanstd(QF_Cac_all_flies_IAA)/sqrt(size(QF_Cac_all_flies_IAA,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_2_hep,2)],nanmean(QF_449_all_flies_2_hep,1),[nanstd(QF_449_all_flies_2_hep)/sqrt(size(QF_449_all_flies_2_hep,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_2_hep,2)],nanmean(QF_Cac_all_flies_2_hep,1),[nanstd(QF_Cac_all_flies_2_hep)/sqrt(size(QF_Cac_all_flies_2_hep,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate 2 heptanone');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_linalool,2)],nanmean(QF_449_all_flies_linalool,1),[nanstd(QF_449_all_flies_linalool)/sqrt(size(QF_449_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_linalool,2)],nanmean(QF_Cac_all_flies_linalool,1),[nanstd(QF_Cac_all_flies_linalool)/sqrt(size(QF_Cac_all_flies_linalool,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_isobutyl_acetate,2)],nanmean(QF_449_all_flies_isobutyl_acetate,1),[nanstd(QF_449_all_flies_isobutyl_acetate)/sqrt(size(QF_449_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_isobutyl_acetate,2)],nanmean(QF_Cac_all_flies_isobutyl_acetate,1),[nanstd(QF_Cac_all_flies_isobutyl_acetate)/sqrt(size(QF_Cac_all_flies_isobutyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');

%% Figure 6C
clc;clear;
load('Fig6C.mat');

figure;
shadedErrorBar([1:size(QF_449_all_flies_IAA,2)],nanmean(QF_449_all_flies_IAA,1),[nanstd(QF_449_all_flies_IAA)/sqrt(size(QF_449_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_IAA,2)],nanmean(QF_Cac_all_flies_IAA,1),[nanstd(QF_Cac_all_flies_IAA)/sqrt(size(QF_Cac_all_flies_IAA,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_2_hep,2)],nanmean(QF_449_all_flies_2_hep,1),[nanstd(QF_449_all_flies_2_hep)/sqrt(size(QF_449_all_flies_2_hep,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_2_hep,2)],nanmean(QF_Cac_all_flies_2_hep,1),[nanstd(QF_Cac_all_flies_2_hep)/sqrt(size(QF_Cac_all_flies_2_hep,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate 2 heptanone');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_linalool,2)],nanmean(QF_449_all_flies_linalool,1),[nanstd(QF_449_all_flies_linalool)/sqrt(size(QF_449_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_linalool,2)],nanmean(QF_Cac_all_flies_linalool,1),[nanstd(QF_Cac_all_flies_linalool)/sqrt(size(QF_Cac_all_flies_linalool,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(QF_449_all_flies_isobutyl_acetate,2)],nanmean(QF_449_all_flies_isobutyl_acetate,1),[nanstd(QF_449_all_flies_isobutyl_acetate)/sqrt(size(QF_449_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(QF_Cac_all_flies_isobutyl_acetate,2)],nanmean(QF_Cac_all_flies_isobutyl_acetate,1),[nanstd(QF_Cac_all_flies_isobutyl_acetate)/sqrt(size(QF_Cac_all_flies_isobutyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('iLN Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([0 25]);xlim([0 60]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');

%% Figure 6D
clc;clear;
load('Fig6D.mat');

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_control_day0) mean(new_all_flies_PP_30ms_control_day0)...
    mean(new_all_flies_PP_100ms_control_day0) mean(new_all_flies_PP_300ms_control_day0)...
    mean(new_all_flies_PP_1000ms_control_day0)],...
    [std(new_all_flies_PP_10ms_control_day0)/sqrt(length(new_all_flies_PP_10ms_control_day0)) ...
    std(new_all_flies_PP_30ms_control_day0)/sqrt(length(new_all_flies_PP_30ms_control_day0)) ...
    std(new_all_flies_PP_100ms_control_day0)/sqrt(length(new_all_flies_PP_100ms_control_day0)) ...
    std(new_all_flies_PP_300ms_control_day0)/sqrt(length(new_all_flies_PP_300ms_control_day0)) ...
    std(new_all_flies_PP_1000ms_control_day0)/sqrt(length(new_all_flies_PP_1000ms_control_day0))],'lineprops','k')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_control_day0) mean(new_all_flies_PP_30ms_control_day0)...
    mean(new_all_flies_PP_100ms_control_day0) mean(new_all_flies_PP_300ms_control_day0)...
    mean(new_all_flies_PP_1000ms_control_day0)],'-ok','MarkerFaceColor','k')
hold on

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_RNAi_day0) mean(new_all_flies_PP_30ms_RNAi_day0)...
    mean(new_all_flies_PP_100ms_RNAi_day0) mean(new_all_flies_PP_300ms_RNAi_day0)...
    mean(new_all_flies_PP_1000ms_RNAi_day0)],...
    [std(new_all_flies_PP_10ms_RNAi_day0)/sqrt(length(new_all_flies_PP_10ms_RNAi_day0)) ...
    std(new_all_flies_PP_30ms_RNAi_day0)/sqrt(length(new_all_flies_PP_30ms_RNAi_day0)) ...
    std(new_all_flies_PP_100ms_RNAi_day0)/sqrt(length(new_all_flies_PP_100ms_RNAi_day0)) ...
    std(new_all_flies_PP_300ms_RNAi_day0)/sqrt(length(new_all_flies_PP_300ms_RNAi_day0)) ...
    std(new_all_flies_PP_1000ms_RNAi_day0)/sqrt(length(new_all_flies_PP_1000ms_RNAi_day0))],'lineprops','g')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_RNAi_day0) mean(new_all_flies_PP_30ms_RNAi_day0)...
    mean(new_all_flies_PP_100ms_RNAi_day0) mean(new_all_flies_PP_300ms_RNAi_day0)...
    mean(new_all_flies_PP_1000ms_RNAi_day0)],'-og','MarkerFaceColor','g')

box off
xlim([-0 6]);ylim([0 3]);
set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','RNAi');title('day 0');
[H, pValue, W] = swtest(new_all_flies_PP_10ms_control_day0);
[H, pValue, W] = swtest(new_all_flies_PP_10ms_RNAi_day0);
stats=mes(new_all_flies_PP_10ms_control_day0,new_all_flies_PP_10ms_RNAi_day0,'hedgesg');
[h,p] = ttest2(new_all_flies_PP_10ms_control_day0,new_all_flies_PP_10ms_RNAi_day0);


%-------------------------------------------------------------------------
figure;
shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],...
    [std(new_all_flies_PP_10ms_control)/sqrt(length(new_all_flies_PP_10ms_control)) ...
    std(new_all_flies_PP_30ms_control)/sqrt(length(new_all_flies_PP_30ms_control)) ...
    std(new_all_flies_PP_100ms_control)/sqrt(length(new_all_flies_PP_100ms_control)) ...
    std(new_all_flies_PP_300ms_control)/sqrt(length(new_all_flies_PP_300ms_control)) ...
    std(new_all_flies_PP_1000ms_control)/sqrt(length(new_all_flies_PP_1000ms_control))],'lineprops','k')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],'-ok','MarkerFaceColor','k')
hold on

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],...
    [std(new_all_flies_PP_10ms_RNAi)/sqrt(length(new_all_flies_PP_10ms_RNAi)) ...
    std(new_all_flies_PP_30ms_RNAi)/sqrt(length(new_all_flies_PP_30ms_RNAi)) ...
    std(new_all_flies_PP_100ms_RNAi)/sqrt(length(new_all_flies_PP_100ms_RNAi)) ...
    std(new_all_flies_PP_300ms_RNAi)/sqrt(length(new_all_flies_PP_300ms_RNAi)) ...
    std(new_all_flies_PP_1000ms_RNAi)/sqrt(length(new_all_flies_PP_1000ms_RNAi))],'lineprops','g')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],'-og','MarkerFaceColor','g')

box off
xlim([-0 6]);ylim([0 3]);
set(gca,'TickDir','out');
h = zeros(2, 1);title('day 2-4');
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','RNAi');
[H, pValue, W] = swtest(new_all_flies_PP_10ms_control);
[H, pValue, W] = swtest(new_all_flies_PP_10ms_RNAi);
stats=mes(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi,'hedgesg');
[h,p] = ttest2(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi);

