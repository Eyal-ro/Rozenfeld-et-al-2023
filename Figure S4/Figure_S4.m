%% Figure S4A

clc;clear;
load('FigS4A.mat');

figure;
shadedErrorBar([1:size(GH146_all_flies_2_hep,2)],nanmean(GH146_all_flies_2_hep,1),[nanstd(GH146_all_flies_2_hep)/sqrt(size(GH146_all_flies_2_hep,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_flies_2_hep,2)],nanmean(Cac_all_flies_2_hep,1),[nanstd(Cac_all_flies_2_hep)/sqrt(size(Cac_all_flies_2_hep,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation-2 heptanone');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(GH146_all_flies_linalool,2)],nanmean(GH146_all_flies_linalool,1),[nanstd(GH146_all_flies_linalool)/sqrt(size(GH146_all_flies_linalool,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_flies_linalool,2)],nanmean(Cac_all_flies_linalool,1),[nanstd(Cac_all_flies_linalool)/sqrt(size(Cac_all_flies_linalool,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation-linalool');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure;
shadedErrorBar([1:size(GH146_all_flies_ethyl_acetate,2)],nanmean(GH146_all_flies_ethyl_acetate,1),[nanstd(GH146_all_flies_ethyl_acetate)/sqrt(size(GH146_all_flies_ethyl_acetate,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_flies_ethyl_acetate,2)],nanmean(Cac_all_flies_ethyl_acetate,1),[nanstd(Cac_all_flies_ethyl_acetate)/sqrt(size(Cac_all_flies_ethyl_acetate,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation-ethyl acetate');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');




figure;
shadedErrorBar([1:size(GH146_all_flies_isobutyl_acetate,2)],nanmean(GH146_all_flies_isobutyl_acetate,1),[nanstd(GH146_all_flies_isobutyl_acetate)/sqrt(size(GH146_all_flies_isobutyl_acetate,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_flies_isobutyl_acetate,2)],nanmean(Cac_all_flies_isobutyl_acetate,1),[nanstd(Cac_all_flies_isobutyl_acetate)/sqrt(size(Cac_all_flies_isobutyl_acetate,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation-isobutyl acetate');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');

figure;
shadedErrorBar([1:size(GH146_all_flies_IAA,2)],nanmean(GH146_all_flies_IAA,1),[nanstd(GH146_all_flies_IAA)/sqrt(size(GH146_all_flies_IAA,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Cac_all_flies_IAA,2)],nanmean(Cac_all_flies_IAA,1),[nanstd(Cac_all_flies_IAA)/sqrt(size(Cac_all_flies_IAA,1))],'lineprops','g');
box off
set(gca,'TickDir','out');title('Correlation-isopentyl acetate');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');

%% Figure S4B

clc;clear;
load('FigS4B.mat');

figure;
histogram(GH146_all_flies_IAA_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_IAA_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('isopentyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_linalool_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_linalool_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('linalool');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;



figure;
histogram(GH146_all_flies_ethyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_ethyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('ethyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_isobutyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_isobutyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('isobutyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_2_hep_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Cac_all_flies_2_hep_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('2 heptanone');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;

%% Figure S4C

clc;clear;
load('FigS4C.mat');

figure;
max_bin1 = ceil(max(max(GH146_all_flies_IAA(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_all_flies_IAA(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(GH146_all_flies_IAA(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_IAA(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ;
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_all_flies_IAA(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_all_flies_IAA(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 7]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - isopentyl acetae');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','','100','','150','','200'});
yticklabels({'0','50','100','150','200','250','300','350'});




%------------------------------------------------------------------------------
figure;
max_bin1 = ceil(max(max(GH146_all_flies_linalool(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_all_flies_linalool(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(GH146_all_flies_linalool(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_linalool(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_all_flies_linalool(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_all_flies_linalool(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 7]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - linalool');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','50','100','150','200','250','300','350'});



%------------------------------------------------------------------------------

figure;
max_bin1 = ceil(max(max(GH146_all_flies_isobutyl_acetate(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_all_flies_isobutyl_acetate(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(GH146_all_flies_isobutyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_isobutyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_all_flies_isobutyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_all_flies_isobutyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 7]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - isobutyl acetate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','50','100','150','200','250','300','350'});



%------------------------------------------------------------------------------

figure;
max_bin1 = ceil(max(max(GH146_all_flies_ethyl_acetate(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_all_flies_ethyl_acetate(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(GH146_all_flies_ethyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_ethyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_all_flies_ethyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_all_flies_ethyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 7]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - ethyl acetate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','50','100','150','200','250','300','350'});



%------------------------------------------------------------------------------

figure;
max_bin1 = ceil(max(max(GH146_all_flies_2_hep(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Cac_all_flies_2_hep(1:2:end,:),[],2)));
max3 = min(max_bin1,max_bin2);

[N,edges,bin] = histcounts(GH146_all_flies_2_hep(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_control = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* GH146_all_flies_2_hep(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0)) ; 
    new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_control(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','k');


[N,edges,bin] = histcounts(Cac_all_flies_2_hep(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Cac_all_flies_2_hep(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','g');

xlabel('Time (sec)');
box off;ylim([0 7]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - 2 heptanone');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','50','100','150','200','250','300','350'});




