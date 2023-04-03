%% Figure 7B
clc;clear;
load('Fig7B.mat');

figure;
bar(1,mean(Before_all_flies_IAA_new_control),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_flies_IAA_new_control),'k');hold on
plot([1 2],[Before_all_flies_IAA_new_control; After_all_flies_IAA_new_control],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('spikes/sec');
h = zeros(2, 1);title('Control-isopentyl acetate')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_flies_IAA_new_control-After_all_flies_IAA_new_control);
stats=mes(Before_all_flies_IAA_new_control,After_all_flies_IAA_new_control,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_flies_IAA_new_control-After_all_flies_IAA_new_control]',10000);

figure;
bar(1,mean(Before_all_flies_isobutyl_acetate_new_control),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_flies_isobutyl_acetate_new_control),'k');hold on
plot([1 2],[Before_all_flies_isobutyl_acetate_new_control; After_all_flies_isobutyl_acetate_new_control],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('spikes/sec');
h = zeros(2, 1);title('Control-isobutyl acetate')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_flies_isobutyl_acetate_new_control-After_all_flies_isobutyl_acetate_new_control);
stats=mes(Before_all_flies_isobutyl_acetate_new_control,After_all_flies_isobutyl_acetate_new_control,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_flies_isobutyl_acetate_new_control-After_all_flies_isobutyl_acetate_new_control]',10000);

%-------------------------------------------------------------------------------

figure;
bar(1,mean(Before_all_flies_IAA_new_RNAi),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_flies_IAA_new_RNAi),'k');hold on
plot([1 2],[Before_all_flies_IAA_new_RNAi; After_all_flies_IAA_new_RNAi],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('spikes/sec');
h = zeros(2, 1);title('RNAi-isopentyl acetate')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_flies_IAA_new_RNAi-After_all_flies_IAA_new_RNAi);
stats=mes(Before_all_flies_IAA_new_RNAi,After_all_flies_IAA_new_RNAi,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_flies_IAA_new_RNAi-After_all_flies_IAA_new_RNAi]',10000);

figure;
bar(1,mean(Before_all_flies_isobutyl_acetate_new_RNAi),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_flies_isobutyl_acetate_new_RNAi),'k');hold on
plot([1 2],[Before_all_flies_isobutyl_acetate_new_RNAi; After_all_flies_isobutyl_acetate_new_RNAi],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('spikes/sec');
h = zeros(2, 1);title('RNAi-isobutyl acetate')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_flies_isobutyl_acetate_new_RNAi-After_all_flies_isobutyl_acetate_new_RNAi);
stats=mes(Before_all_flies_isobutyl_acetate_new_RNAi,After_all_flies_isobutyl_acetate_new_RNAi,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_flies_isobutyl_acetate_new_RNAi-After_all_flies_isobutyl_acetate_new_RNAi]',10000);

%% Figure 7C
clc;clear;
load('Fig7C.mat');

figure;
bar(1,mean(Before_all_odors_control),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_odors_control),'k');hold on
plot([1 2],[Before_all_odors_control, After_all_odors_control],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('Mean variance');
h = zeros(2, 1);title('Control')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
yticklabels({'0','25','50','75','100','125','150','175','200','225'});

[H, pValue, W] = swtest(Before_all_odors_control-After_all_odors_control);
stats=mes(Before_all_odors_control,After_all_odors_control,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_odors_control-After_all_odors_control],10000);


figure;
bar(1,mean(Before_all_odors_RNAi),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_odors_RNAi),'k');hold on
plot([1 2],[Before_all_odors_RNAi, After_all_odors_RNAi],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('Mean variance');
h = zeros(2, 1);title('RNAi')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
yticklabels({'0','25','50','75','100','125','150','175'});
[H, pValue, W] = swtest(Before_all_odors_RNAi-After_all_odors_RNAi);
stats=mes(Before_all_odors_RNAi,After_all_odors_RNAi,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_odors_RNAi-After_all_odors_RNAi],10000);


%-------------------------------------------------------------------------------

figure;
bar(1,mean(Before_all_odors_knee_control),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_odors_knee_control),'k');hold on
plot([1 2],[Before_all_odors_knee_control; After_all_odors_knee_control],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('Integration window');
h = zeros(2, 1);title('control')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_odors_knee_control-After_all_odors_knee_control);
stats=mes(Before_all_odors_knee_control,After_all_odors_knee_control,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_odors_knee_control-After_all_odors_knee_control]',10000);

figure;
bar(1,mean(Before_all_odors_knee_RNAi),'FaceColor',[0.9 0.9 0.9]);hold on
bar(2,mean(After_all_odors_knee_RNAi),'k');hold on
plot([1 2],[Before_all_odors_knee_RNAi; After_all_odors_knee_RNAi],'color',[0.5 0.5 0.5]);
box off
set(gca,'TickDir','out');ylabel('Integration window');
h = zeros(2, 1);title('RNAi')
h(1) = plot(NaN,NaN,'color',[0.9 0.9 0.9],'LineWidth',2);
h(2) = plot(NaN,NaN,'k','LineWidth',2);
legend(h, 'Before GABA blockers','After GABA blockers');
[H, pValue, W] = swtest(Before_all_odors_knee_RNAi-After_all_odors_knee_RNAi);
stats=mes(Before_all_odors_knee_RNAi,After_all_odors_knee_RNAi,'hedgesg','isDep',1);
[pval, t_orig, crit_t, est_alpha, seed_state]=mult_comp_perm_t1([Before_all_odors_knee_RNAi-After_all_odors_knee_RNAi]',10000);


%% Figure 7E
clc;clear;
load('Fig7E.mat');

figure;
shadedErrorBar([1:size(all_flies_all_odors_GH146,2)],nanmean(all_flies_all_odors_GH146,1),[nanstd(all_flies_all_odors_GH146)/sqrt(size(all_flies_all_odors_GH146,1))],'lineprops',{'k','linewidth',2});
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(all_flies_all_odors_GABA,2)],nanmean(all_flies_all_odors_GABA,1),[nanstd(all_flies_all_odors_GABA)/sqrt(size(all_flies_all_odors_GABA,1))],'lineprops',{'r','linewidth',2});
box off
set(gca,'TickDir','out');title('Correlation');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','GABA-RNAi');

%--------------------------------------------------------------------------


figure;
max_bin1 = ceil(max(max(all_odors_GH146(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(all_odors_GABA(1:2:end,:),[],2)));
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

[N,edges,bin] = histcounts(all_odors_GABA(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);

for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* all_odors_GABA(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ;
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');
xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms)');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','','50','','100','','150','','200','','250'});
legend(h, 'Control','GABA-RNAi');


%% Figure 7G
clc;clear;
load('Fig7G.mat');


figure;
shadedErrorBar([1:size(all_flies_all_odors_GH146,2)],nanmean(all_flies_all_odors_GH146,1),[nanstd(all_flies_all_odors_GH146)/sqrt(size(all_flies_all_odors_GH146,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(all_flies_all_odors_Glu,2)],nanmean(all_flies_all_odors_Glu,1),[nanstd(all_flies_all_odors_Glu)/sqrt(size(all_flies_all_odors_Glu,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation');ylabel('correlation');
ylim([0 1])
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Glu-RNAi');


%--------------------------------------------------------------------------


figure;
max_bin1 = ceil(max(max(all_odors_GH146(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(all_odors_Glu(1:2:end,:),[],2)));
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

[N,edges,bin] = histcounts(all_odors_Glu(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);

for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* all_odors_Glu(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ; 
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ;
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - all odors');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 6]);ylim([0 4]);
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','','50','','100','','150','','200'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Glu-RNAi');


