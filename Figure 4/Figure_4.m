%% Figure 4B
clc;clear;
load('Fig4B.mat');


shadedErrorBar([1:size(GH146_all_flies_IAA,2)],nanmean(GH146_all_flies_IAA,1),[nanstd(GH146_all_flies_IAA)/sqrt(size(GH146_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_IAA,2)],nanmean(CaC_all_flies_IAA,1),[nanstd(CaC_all_flies_IAA)/sqrt(size(CaC_all_flies_IAA,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xlim([0 60]);ylim([0 160]);



figure;
shadedErrorBar([1:size(GH146_all_flies_2_hep,2)],nanmean(GH146_all_flies_2_hep,1),[nanstd(GH146_all_flies_2_hep)/sqrt(size(GH146_all_flies_2_hep,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_2_hep,2)],nanmean(CaC_all_flies_2_hep,1),[nanstd(CaC_all_flies_2_hep)/sqrt(size(CaC_all_flies_2_hep,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate 2 heptanone');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xlim([0 60]);ylim([0 160]);


figure;
shadedErrorBar([1:size(GH146_all_flies_linalool,2)],nanmean(GH146_all_flies_linalool,1),[nanstd(GH146_all_flies_linalool)/sqrt(size(GH146_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_linalool,2)],nanmean(CaC_all_flies_linalool,1),[nanstd(CaC_all_flies_linalool)/sqrt(size(CaC_all_flies_linalool,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xlim([0 60]);ylim([0 160]);



figure;
shadedErrorBar([1:size(GH146_all_flies_ethyl_acetate,2)],nanmean(GH146_all_flies_ethyl_acetate,1),[nanstd(GH146_all_flies_ethyl_acetate)/sqrt(size(GH146_all_flies_ethyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_ethyl_acetate,2)],nanmean(CaC_all_flies_ethyl_acetate,1),[nanstd(CaC_all_flies_ethyl_acetate)/sqrt(size(CaC_all_flies_ethyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate ethyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xlim([0 60]);ylim([0 160]);


figure;
shadedErrorBar([1:size(GH146_all_flies_isobutyl_acetate,2)],nanmean(GH146_all_flies_isobutyl_acetate,1),[nanstd(GH146_all_flies_isobutyl_acetate)/sqrt(size(GH146_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_isobutyl_acetate,2)],nanmean(CaC_all_flies_isobutyl_acetate,1),[nanstd(CaC_all_flies_isobutyl_acetate)/sqrt(size(CaC_all_flies_isobutyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xlim([0 60]);ylim([0 160]);

%% Figure 4C
clc;clear;
load('Fig4C.mat');

figure;
shadedErrorBar([1:size(all_flies_all_odors_GH146,2)],nanmean(all_flies_all_odors_GH146,1),[nanstd(all_flies_all_odors_GH146)/sqrt(size(all_flies_all_odors_GH146,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(all_flies_all_odors_Cac,2)],nanmean(all_flies_all_odors_Cac,1),[nanstd(all_flies_all_odors_Cac)/sqrt(size(all_flies_all_odors_Cac,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');

%% Figure 4D
clc;clear;
load('Fig4D.mat');

figure;
histogram(GH146_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.1]);
histogram(Cac_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('knee of curve');ylim([0 0.06]);xlim([0 50]);
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;

[H, pValue, W] = swtest(GH146_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Cac_all_flies_all_odors_knee);
stats=mes(GH146_all_flies_all_odors_knee,Cac_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_all_odors_knee, Cac_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 4E
clc;clear;
load('Fig4E.mat');

figure;
max_bin1 = ceil(max(max(all_odors_GH146(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(all_odors_Cac(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(all_odors_GH146(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* all_odors_GH146(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');

[N,edges,bin] = histcounts(all_odors_Cac(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);

for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* all_odors_Cac(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ;
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - all odors');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 6]);

h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','','50','','100','','150','','200','','250'});

%% Figure 4F
clc;clear;
load('Fig4F.mat');

figure;
shadedErrorBar([1:size(GH146_10_3_all_flies_IAA,2)],nanmean(GH146_10_3_all_flies_IAA,1),[nanstd(GH146_10_3_all_flies_IAA)/sqrt(size(GH146_10_3_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Cac_10_3_all_flies_IAA,2)],nanmean(Cac_10_3_all_flies_IAA,1),[nanstd(Cac_10_3_all_flies_IAA)/sqrt(size(Cac_10_3_all_flies_IAA,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);xlim([0 60]);ylim([0 160]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');


figure;
shadedErrorBar([1:size(GH146_10_3_all_flies_linalool,2)],nanmean(GH146_10_3_all_flies_linalool,1),[nanstd(GH146_10_3_all_flies_linalool)/sqrt(size(GH146_10_3_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Cac_10_3_all_flies_linalool,2)],nanmean(Cac_10_3_all_flies_linalool,1),[nanstd(Cac_10_3_all_flies_linalool)/sqrt(size(Cac_10_3_all_flies_linalool,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);;xlim([0 60]);ylim([0 160]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');


figure;
shadedErrorBar([1:size(GH146_10_3_all_flies_isobutyl_acetate,2)],nanmean(GH146_10_3_all_flies_isobutyl_acetate,1),[nanstd(GH146_10_3_all_flies_isobutyl_acetate)/sqrt(size(GH146_10_3_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Cac_10_3_all_flies_isobutyl_acetate,2)],nanmean(Cac_10_3_all_flies_isobutyl_acetate,1),[nanstd(Cac_10_3_all_flies_isobutyl_acetate)/sqrt(size(Cac_10_3_all_flies_isobutyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);;xlim([0 60]);ylim([0 160]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');

%% Figure 4G
clc;clear;
load('Fig4G.mat');

figure;
shadedErrorBar([1:size(all_odors_10_3,2)],nanmean(all_odors_10_3,1),[nanstd(all_odors_10_3)/sqrt(size(all_odors_10_3,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_odors_10_3,2)],nanmean(Cac_all_odors_10_3,1),[nanstd(Cac_all_odors_10_3)/sqrt(size(Cac_all_odors_10_3,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');


figure;
histogram(Control_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.1]);
histogram(Cac_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('odors knee of curve');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control 10^-3','Cac 10^-3');set(gca,'TickDir','out');box off;
xlim([0 50]);ylim([0 0.06]);
[H, pValue, W] = swtest(Control_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Cac_all_flies_all_odors_knee);
stats=mes(Control_all_flies_all_odors_knee,Cac_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(Control_all_flies_all_odors_knee, Cac_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);



