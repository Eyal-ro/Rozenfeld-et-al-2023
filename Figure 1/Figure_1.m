%% Figure 1C

clc;clear;
load('Fig1C.mat');

GH146_all_flies_IAA=GH146_all_flies_IAA*20;
CaC_all_flies_IAA=CaC_all_flies_IAA*20;
figure;

shadedErrorBar([1:size(GH146_all_flies_IAA,2)],nanmean(GH146_all_flies_IAA,1),[nanstd(GH146_all_flies_IAA)/sqrt(size(GH146_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_IAA,2)],nanmean(CaC_all_flies_IAA,1),[nanstd(CaC_all_flies_IAA)/sqrt(size(CaC_all_flies_IAA,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','CaC-RNAi');
xlim([0 60]);ylim([0 140]);


GH146_all_flies_2_hep=GH146_all_flies_2_hep*20;
CaC_all_flies_2_hep=CaC_all_flies_2_hep*20;
figure;
shadedErrorBar([1:size(GH146_all_flies_2_hep,2)],nanmean(GH146_all_flies_2_hep,1),[nanstd(GH146_all_flies_2_hep)/sqrt(size(GH146_all_flies_2_hep,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_2_hep,2)],nanmean(CaC_all_flies_2_hep,1),[nanstd(CaC_all_flies_2_hep)/sqrt(size(CaC_all_flies_2_hep,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate 2 heptanone');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','CaC-RNAi');
xlim([0 60]);ylim([0 140]);


GH146_all_flies_linalool=GH146_all_flies_linalool*20;
CaC_all_flies_linalool=CaC_all_flies_linalool*20;
figure;

shadedErrorBar([1:size(GH146_all_flies_linalool,2)],nanmean(GH146_all_flies_linalool,1),[nanstd(GH146_all_flies_linalool)/sqrt(size(GH146_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_linalool,2)],nanmean(CaC_all_flies_linalool,1),[nanstd(CaC_all_flies_linalool)/sqrt(size(CaC_all_flies_linalool,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','CaC-RNAi');
xlim([0 60]);ylim([0 140]);



GH146_all_flies_ethyl_acetate=GH146_all_flies_ethyl_acetate*20;
CaC_all_flies_ethyl_acetate=CaC_all_flies_ethyl_acetate*20;
figure;

shadedErrorBar([1:size(GH146_all_flies_ethyl_acetate,2)],nanmean(GH146_all_flies_ethyl_acetate,1),[nanstd(GH146_all_flies_ethyl_acetate)/sqrt(size(GH146_all_flies_ethyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_ethyl_acetate,2)],nanmean(CaC_all_flies_ethyl_acetate,1),[nanstd(CaC_all_flies_ethyl_acetate)/sqrt(size(CaC_all_flies_ethyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate ethyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','CaC-RNAi');
xlim([0 60]);ylim([0 140]);



GH146_all_flies_isobutyl_acetate=GH146_all_flies_isobutyl_acetate*20;
CaC_all_flies_isobutyl_acetate=CaC_all_flies_isobutyl_acetate*20;
figure;

shadedErrorBar([1:size(GH146_all_flies_isobutyl_acetate,2)],nanmean(GH146_all_flies_isobutyl_acetate,1),[nanstd(GH146_all_flies_isobutyl_acetate)/sqrt(size(GH146_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(CaC_all_flies_isobutyl_acetate,2)],nanmean(CaC_all_flies_isobutyl_acetate,1),[nanstd(CaC_all_flies_isobutyl_acetate)/sqrt(size(CaC_all_flies_isobutyl_acetate,1)/10)],'lineprops','g');
box off
set(gca,'TickDir','out');title('Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','CaC-RNAi');
xlim([0 60]);ylim([0 140]);


%% Figure 1D
clc;clear;
load('Fig1D.mat');

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

%% Figure 1E
clc;clear;
load('Fig1E.mat');

figure;
histogram(GH146_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.1]);
histogram(Cac_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','g')
title('knee of curve');ylim([0 0.06]);
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Cac-RNAi');set(gca,'TickDir','out');box off;

[H, pValue, W] = swtest(GH146_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Cac_all_flies_all_odors_knee);
stats=mes(GH146_all_flies_all_odors_knee,Cac_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_all_odors_knee, Cac_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 1F
clc;clear;
load('Fig1F.mat');

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
box off;ylim([0 4]);
set(gca,'TickDir','out');title('Variance as a function of firing rate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','Cac-RNAi');
xticklabels({'50','100','150','200','250','300'});
yticklabels({'0','','50','','100','','150','','200'});

%% Figure 1H
clc;clear;
load('Fig1H.mat');

analysis_time_frame = 1:500;
IAA_DATA = []; % first col is IC, second is VC
figure;
for i=1:size(IAA_IC,1) 
    hold on;
    plot([0.5 1],[sum(IAA_IC(i,analysis_time_frame)),sum(IAA_VC(i,analysis_time_frame))],'k','Marker','o','MarkerFaceColor','k');
    xlim([0.25 1.25]);
    set(gca,'XTick',[0.5,1]);
    set(gca,'XTickLabel',{'IC','VC'});
    IAA_DATA = [IAA_DATA;[sum(IAA_IC(i,analysis_time_frame)),sum(IAA_VC(i,analysis_time_frame))]];
    title('Firing rate (First 25ms)');
    ylabel('number of spikes');
end

[H, pValue, W] = swtest([IAA_DATA(:,1) - IAA_DATA(:,2)]);
stats=mes(IAA_DATA(:,1),IAA_DATA(:,2),'hedgesg','isDep',1);


%% Figure 1I
clc;clear;
load('Fig1I.mat');

analysis_time_frame = 1:10000;
IAA_DATA = []; % first col is IC, second is VC
figure;
for i=1:size(IAA_IC,1) 
    hold on;
    first_spike_IC = find(IAA_IC(i,analysis_time_frame) == 1) / 20;
    first_spike_VC = find(IAA_VC(i,analysis_time_frame) == 1) / 20;
    plot([0.5 1],[first_spike_IC(1),first_spike_VC(1)],'k','Marker','o','MarkerFaceColor','k');
    xlim([0.25 1.25]);
    set(gca,'XTick',[0.5,1]);
    set(gca,'XTickLabel',{'IC','VC'});
    IAA_DATA = [IAA_DATA;[first_spike_IC(1),first_spike_VC(1)]];
    title('Time of First Detectable Spike');
    ylabel('Time (ms)');
end

[H, pValue, W] = swtest([IAA_DATA(:,1) - IAA_DATA(:,2)]);
stats=mes(IAA_DATA(:,1),IAA_DATA(:,2),'hedgesg','isDep',1);


%% Figure 1J
clc;clear;
load('Fig1J.mat');


GH146_all_flies_2_hep(GH146_all_flies_2_hep>2000)=nan;
GH146_all_flies_IAA(GH146_all_flies_IAA>2000)=nan;
GH146_all_flies_isobutyl_acetate(GH146_all_flies_isobutyl_acetate>2000)=nan;

Cac_all_flies_2_hep(Cac_all_flies_2_hep>2000)=nan;
Cac_all_flies_IAA(Cac_all_flies_IAA>2000)=nan;
Cac_all_flies_isobutyl_acetate(Cac_all_flies_isobutyl_acetate>2000)=nan;

%--------------------------------------------------------------
Cac_all_flies_IAA(isnan(Cac_all_flies_IAA))=2000;

spike_train=zeros(size(Cac_all_flies_IAA,2),2000);
for i=1:size(Cac_all_flies_IAA,2)
spike_train(i,ceil(nanmean(Cac_all_flies_IAA(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - IAA - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- isopentyl acetate -Cac-RNAi');

%--------------------------------------------------------------

Cac_all_flies_isobutyl_acetate(isnan(Cac_all_flies_isobutyl_acetate))=2000;

spike_train=zeros(size(Cac_all_flies_isobutyl_acetate,2),2000);
for i=1:size(Cac_all_flies_isobutyl_acetate,2)
spike_train(i,ceil(nanmean(Cac_all_flies_isobutyl_acetate(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - isobutyl_acetate - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- isobutyl acetate -Cac-RNAi');
%--------------------------------------------------------------

Cac_all_flies_2_hep(isnan(Cac_all_flies_2_hep))=2000;

spike_train=zeros(size(Cac_all_flies_2_hep,2),2000);
for i=1:size(Cac_all_flies_2_hep,2)
spike_train(i,ceil(nanmean(Cac_all_flies_2_hep(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - 2_hep - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- 2 heptanone -Cac-RNAi');

%--------------------------------------------------------------

GH146_all_flies_isobutyl_acetate(isnan(GH146_all_flies_isobutyl_acetate))=2000;

spike_train=zeros(size(GH146_all_flies_isobutyl_acetate,2),2000);
for i=1:size(GH146_all_flies_isobutyl_acetate,2)
spike_train(i,ceil(nanmean(GH146_all_flies_isobutyl_acetate(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - isobutyl_acetate - Sorted with baseline');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster - isobutyl acetate -Control');

%--------------------------------------------------------------
GH146_all_flies_2_hep(isnan(GH146_all_flies_2_hep))=2000;

spike_train=zeros(size(GH146_all_flies_2_hep,2),2000);
for i=1:size(GH146_all_flies_2_hep,2)
spike_train(i,ceil(nanmean(GH146_all_flies_2_hep(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - 2_hep - Sorted with baseline');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster - 2 heptanone -Control');
%--------------------------------------------------------------

GH146_all_flies_IAA(isnan(GH146_all_flies_IAA))=2000;

spike_train=zeros(size(GH146_all_flies_IAA,2),2000);
for i=1:size(GH146_all_flies_IAA,2)
spike_train(i,ceil(nanmean(GH146_all_flies_IAA(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - IAA - Sorted with baseline');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster - isopentyl acetate -Control');


%% Figure 1K
clc;clear;
load('Fig1K.mat');

figure;
bar(1,nanmean(nanstd(GH146_all_odors/20)),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(nanstd(Cac_all_odors/20)),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_odors,2),size(Cac_all_odors,2));
GH146_all_odors(:,end:max_len) = nan;
Cac_all_odors(:,end:max_len) = nan;
UnivarScatter([nanstd(GH146_all_odors/20)',nanstd(Cac_all_odors/20)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none','PointSize',10)
xtickangle(45)
box off
set(gca,'TickDir','out');title('First spike jitter');ylabel('jitter (ms)');

[H, pValue, W] = swtest(nanstd(GH146_all_odors/20));
[H, pValue, W] = swtest(nanstd(Cac_all_odors/20));
stats=mes(nanstd(GH146_all_odors/20),nanstd(Cac_all_odors/20),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(nanstd(GH146_all_odors/20),nanstd(Cac_all_odors/20), 10000, 'plotresult', 1, 'showprogress', 250);

