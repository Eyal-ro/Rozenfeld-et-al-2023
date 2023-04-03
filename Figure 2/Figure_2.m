%% Figure 2A
clc;clear;
load('Fig2A.mat');


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
h = zeros(2, 1);xlim([0 60]);ylim([0 160]);
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
h = zeros(2, 1);xlim([0 60]);ylim([0 160]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');

%% Figure 2B
clc;clear;
load('Fig2B.mat');

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

%% Figure 2C
clc;clear;
load('Fig2C.mat');


figure;
histogram(Control_all_flies_all_odors_knee,[1:1:50],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.1]);
histogram(Cac_all_flies_all_odors_knee,[1:1:50],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('Knee of curve');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control 10^-3','Cac 10^-3');set(gca,'TickDir','out');box off;
ylim([0 0.06]);


[H, pValue, W] = swtest(Control_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Cac_all_flies_all_odors_knee);
stats=mes(Control_all_flies_all_odors_knee,Cac_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(Control_all_flies_all_odors_knee, Cac_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 2D
clc;clear;
load('Fig2D.mat');


figure;
max_bin1 = ceil(max(max(GH146_all_flies_all_odors(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_10_3_all_flies_all_odors(1:2:end,:),[],2)));

max3 = min([max_bin1,max_bin2]);

[N,edges,bin] = histcounts(GH146_all_flies_all_odors(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_all_odors(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_10_3_all_flies_all_odors(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_10_3_all_flies_all_odors(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 4]);
set(gca,'TickDir','out');title('Variance as a function of firing rate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control 10^-3','Cac 10^-3');
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','','50','','100','','150','','200'});


%% Figure 2E
clc;clear;
load('Fig2E.mat');


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

%% Figure 2F
clc;clear;
load('Fig2F.mat');

figure;
histogram(GH146_all_flies_all_odors_knee,[1:1:50],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_all_odors_knee,[1:1:50],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('knee of curve');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;



[H, pValue, W] = swtest(GH146_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Cac_all_flies_all_odors_knee);
stats=mes(GH146_all_flies_all_odors_knee,Cac_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_all_odors_knee, Cac_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 2G
clc;clear;
load('Fig2G.mat');

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
box off;ylim([0 3]);
set(gca,'TickDir','out');title('Variance as a function of firing rate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xticklabels({'50','','100','','150','','200','','250'});
yticklabels({'0','','50','','100','','150'});


%% Figure 2H
clc;clear;
load('Fig2H.mat');


figure;
plot([mean(Cac_all_flies,1)] ./ [mean(GH146_all_flies,1)],'k');
ylabel('AUC RNAi / AUC Control');
box off;
set(gca,'TickDir','out');title('AUC of Variance as a function bins removed');
xlabel('Fraction of transient removed (20ms jumps)');
xlim([0.5 10.5])
ylim([0 2.5]);
xticklabels({'20','40','60','80','100','120','140','160','180','200'});
