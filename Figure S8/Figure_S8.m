%% Figure S8A-B
clc;clear;
load('FigS8A_B.mat');


%% A
figure;
shadedErrorBar([1:size(GH146_all_flies_IAA,2)],nanmean(GH146_all_flies_IAA,1),[nanstd(GH146_all_flies_IAA)/sqrt(size(GH146_all_flies_IAA,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Syn_all_flies_IAA,2)],nanmean(Syn_all_flies_IAA,1),[nanstd(Syn_all_flies_IAA)/sqrt(size(Syn_all_flies_IAA,1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate isopentyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
xlim([0 60]);ylim([0 140]);


figure;
shadedErrorBar([1:size(GH146_all_flies_2_hep,2)],nanmean(GH146_all_flies_2_hep,1),[nanstd(GH146_all_flies_2_hep)/sqrt(size(GH146_all_flies_2_hep,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Syn_all_flies_2_hep,2)],nanmean(Syn_all_flies_2_hep,1),[nanstd(Syn_all_flies_2_hep)/sqrt(size(Syn_all_flies_2_hep,1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate 2 heptanone');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
xlim([0 60]);ylim([0 140]);


figure;
shadedErrorBar([1:size(GH146_all_flies_linalool,2)],nanmean(GH146_all_flies_linalool,1),[nanstd(GH146_all_flies_linalool)/sqrt(size(GH146_all_flies_linalool,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Syn_all_flies_linalool,2)],nanmean(Syn_all_flies_linalool,1),[nanstd(Syn_all_flies_linalool)/sqrt(size(Syn_all_flies_linalool,1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate linalool');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
xlim([0 60]);ylim([0 140]);



figure;
shadedErrorBar([1:size(GH146_all_flies_ethyl_acetate,2)],nanmean(GH146_all_flies_ethyl_acetate,1),[nanstd(GH146_all_flies_ethyl_acetate)/sqrt(size(GH146_all_flies_ethyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Syn_all_flies_ethyl_acetate,2)],nanmean(Syn_all_flies_ethyl_acetate,1),[nanstd(Syn_all_flies_ethyl_acetate)/sqrt(size(Syn_all_flies_ethyl_acetate,1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate ethyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
xlim([0 60]);ylim([0 140]);



figure;
shadedErrorBar([1:size(GH146_all_flies_isobutyl_acetate,2)],nanmean(GH146_all_flies_isobutyl_acetate,1),[nanstd(GH146_all_flies_isobutyl_acetate)/sqrt(size(GH146_all_flies_isobutyl_acetate,1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:size(Syn_all_flies_isobutyl_acetate,2)],nanmean(Syn_all_flies_isobutyl_acetate,1),[nanstd(Syn_all_flies_isobutyl_acetate)/sqrt(size(Syn_all_flies_isobutyl_acetate,1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate isobutyl acetate');ylabel('Spikes/sec');
set(gca,'XTick',0:10:60);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5'})
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
xlim([0 60]);ylim([0 140]);



%% B

figure;
bar(1,nanmean(GH146_all_flies_IAA_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(Syn_all_flies_IAA_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_IAA_new,2),size(Syn_all_flies_IAA_new,2));
GH146_all_flies_IAA_new(:,end:max_len) = nan;
Syn_all_flies_IAA_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_IAA_new)',(Syn_all_flies_IAA_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-isopentyl acetate');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_IAA_new);
[H, pValue, W] = swtest(Syn_all_flies_IAA_new);
stats=mes(GH146_all_flies_IAA_new,Syn_all_flies_IAA_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_IAA_new,Syn_all_flies_IAA_new, 10000, 'plotresult', 1, 'showprogress', 250);


figure;
bar(1,nanmean(GH146_all_flies_2_hep_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(Syn_all_flies_2_hep_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_2_hep_new,2),size(Syn_all_flies_2_hep_new,2));
GH146_all_flies_2_hep_new(:,end:max_len) = nan;
Syn_all_flies_2_hep_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_2_hep_new)',(Syn_all_flies_2_hep_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-2 heptanone');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_2_hep_new);
[H, pValue, W] = swtest(Syn_all_flies_2_hep_new);
stats=mes(GH146_all_flies_2_hep_new,Syn_all_flies_2_hep_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_2_hep_new,Syn_all_flies_2_hep_new, 10000, 'plotresult', 1, 'showprogress', 250);




figure;
bar(1,nanmean(GH146_all_flies_ethyl_acetate_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(Syn_all_flies_ethyl_acetate_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_ethyl_acetate_new,2),size(Syn_all_flies_ethyl_acetate_new,2));
GH146_all_flies_ethyl_acetate_new(:,end:max_len) = nan;
Syn_all_flies_ethyl_acetate_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_ethyl_acetate_new)',(Syn_all_flies_ethyl_acetate_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-ethyl acetate');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_ethyl_acetate_new);
[H, pValue, W] = swtest(Syn_all_flies_ethyl_acetate_new);
stats=mes(GH146_all_flies_ethyl_acetate_new,Syn_all_flies_ethyl_acetate_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_ethyl_acetate_new,Syn_all_flies_ethyl_acetate_new, 10000, 'plotresult', 1, 'showprogress', 250);




figure;
bar(1,nanmean(GH146_all_flies_isobutyl_acetate_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(Syn_all_flies_isobutyl_acetate_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_isobutyl_acetate_new,2),size(Syn_all_flies_isobutyl_acetate_new,2));
GH146_all_flies_isobutyl_acetate_new(:,end:max_len) = nan;
Syn_all_flies_isobutyl_acetate_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_isobutyl_acetate_new)',(Syn_all_flies_isobutyl_acetate_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-isobutyl acetate');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_isobutyl_acetate_new);
[H, pValue, W] = swtest(Syn_all_flies_isobutyl_acetate_new);
stats=mes(GH146_all_flies_isobutyl_acetate_new,Syn_all_flies_isobutyl_acetate_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_isobutyl_acetate_new,Syn_all_flies_isobutyl_acetate_new, 10000, 'plotresult', 1, 'showprogress', 250);

figure;
bar(1,nanmean(GH146_all_flies_linalool_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(Syn_all_flies_linalool_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_linalool_new,2),size(Syn_all_flies_linalool_new,2));
GH146_all_flies_linalool_new(:,end:max_len) = nan;
Syn_all_flies_linalool_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_linalool_new)',(Syn_all_flies_linalool_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-linalool');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_linalool_new);
[H, pValue, W] = swtest(Syn_all_flies_linalool_new);
stats=mes(GH146_all_flies_linalool_new,Syn_all_flies_linalool_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_linalool_new,Syn_all_flies_linalool_new, 10000, 'plotresult', 1, 'showprogress', 250);

%% C
clc;clear;
load('FigS8C.mat');


%--------------------------------------------------------------
Syn_all_flies_IAA(isnan(Syn_all_flies_IAA))=2000;

spike_train=zeros(size(Syn_all_flies_IAA,2),2000);
for i=1:size(Syn_all_flies_IAA,2)
spike_train(i,ceil(nanmean(Syn_all_flies_IAA(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - IAA - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- isopentyl acetate -Syn-RNAi');

%--------------------------------------------------------------

Syn_all_flies_isobutyl_acetate(isnan(Syn_all_flies_isobutyl_acetate))=2000;

spike_train=zeros(size(Syn_all_flies_isobutyl_acetate,2),2000);
for i=1:size(Syn_all_flies_isobutyl_acetate,2)
spike_train(i,ceil(nanmean(Syn_all_flies_isobutyl_acetate(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - isobutyl_acetate - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- isobutyl acetate -Syn-RNAi');
%--------------------------------------------------------------

Syn_all_flies_2_hep(isnan(Syn_all_flies_2_hep))=2000;

spike_train=zeros(size(Syn_all_flies_2_hep,2),2000);
for i=1:size(Syn_all_flies_2_hep,2)
spike_train(i,ceil(nanmean(Syn_all_flies_2_hep(:,i)))) =1;
end

figure;plotSpikeRaster(logical( sortrows(spike_train,'descend')),'PlotType','vertline','VertSpikeHeight',0.5);title('All flies Raster - 2_hep - Sorted with baseline');
xlabel('Time (ms)');
set(gca,'XTick',0:1000:2000);set(gca,'XTickLabel',{'0','50','100'});
ylabel('Cell #');title('First spike latancey raster- 2 heptanone -Syn-RNAi');



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

%% D
clc;clear;
load('FigS8D.mat');

figure;
bar(1,nanmean(nanstd(GH146_all_odors/20)),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(nanstd(Syn_all_odors/20)),0.4,'FaceAlpha',0.1)
UnivarScatter([nanstd(GH146_all_odors/20)',nanstd(Syn_all_odors/20)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Syn-RNAi'},'Whiskers','none','PointSize',15)
xtickangle(45)
box off
set(gca,'TickDir','out');title('First spike jitter - All odors');ylabel('jitter (ms)');

[H, pValue, W] = swtest(nanstd(GH146_all_odors/20));

stats=mes(nanstd(GH146_all_odors/20),nanstd(Syn_all_odors/20),'hedgesg')
[p, observeddifference, effectsize] = permutationTest(nanstd(GH146_all_odors/20),nanstd(Syn_all_odors/20), 10000, 'plotresult', 1, 'showprogress', 250);

%% E
clc;clear;
load('FigS8E.mat');

figure;
shadedErrorBar([1:size(GH146_all_flies_2_hep,2)],nanmean(GH146_all_flies_2_hep,1),[nanstd(GH146_all_flies_2_hep)/sqrt(size(GH146_all_flies_2_hep,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Syn_all_flies_2_hep,2)],nanmean(Syn_all_flies_2_hep,1),[nanstd(Syn_all_flies_2_hep)/sqrt(size(Syn_all_flies_2_hep,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation-2 heptanone');ylabel('correlation');
ylim([0 1]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');


figure;
shadedErrorBar([1:size(GH146_all_flies_IAA,2)],nanmean(GH146_all_flies_IAA,1),[nanstd(GH146_all_flies_IAA)/sqrt(size(GH146_all_flies_IAA,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Syn_all_flies_IAA,2)],nanmean(Syn_all_flies_IAA,1),[nanstd(Syn_all_flies_IAA)/sqrt(size(Syn_all_flies_IAA,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation-isopentyl acetate');ylabel('correlation');
ylim([0 1]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');


figure;
shadedErrorBar([1:size(GH146_all_flies_linalool,2)],nanmean(GH146_all_flies_linalool,1),[nanstd(GH146_all_flies_linalool)/sqrt(size(GH146_all_flies_linalool,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Syn_all_flies_linalool,2)],nanmean(Syn_all_flies_linalool,1),[nanstd(Syn_all_flies_linalool)/sqrt(size(Syn_all_flies_linalool,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation-linalool');ylabel('correlation');
ylim([0 1]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');

figure;
shadedErrorBar([1:size(GH146_all_flies_isobutyl_acetate,2)],nanmean(GH146_all_flies_isobutyl_acetate,1),[nanstd(GH146_all_flies_isobutyl_acetate)/sqrt(size(GH146_all_flies_isobutyl_acetate,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Syn_all_flies_isobutyl_acetate,2)],nanmean(Syn_all_flies_isobutyl_acetate,1),[nanstd(Syn_all_flies_isobutyl_acetate)/sqrt(size(Syn_all_flies_isobutyl_acetate,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation-isobutyl acetate');ylabel('correlation');
ylim([0 1]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');


figure;
shadedErrorBar([1:size(GH146_all_flies_ethyl_acetate,2)],nanmean(GH146_all_flies_ethyl_acetate,1),[nanstd(GH146_all_flies_ethyl_acetate)/sqrt(size(GH146_all_flies_ethyl_acetate,1))],'lineprops','k');
xlabel('Bin size (ms)');
hold on
shadedErrorBar([1:size(Syn_all_flies_ethyl_acetate,2)],nanmean(Syn_all_flies_ethyl_acetate,1),[nanstd(Syn_all_flies_ethyl_acetate)/sqrt(size(Syn_all_flies_ethyl_acetate,1))],'lineprops','r');
box off
set(gca,'TickDir','out');title('Correlation-ethyl acetate');ylabel('correlation');
ylim([0 1]);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');


%% F

clc;clear;
load('FigS8F.mat');

figure;
histogram(GH146_all_flies_IAA_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Syn_all_flies_IAA_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','r')
title('isopentyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Syn-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_linalool_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Syn_all_flies_linalool_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','r')
title('linalool');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Syn-RNAi');set(gca,'TickDir','out');box off;



figure;
histogram(GH146_all_flies_ethyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Syn_all_flies_ethyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','r')
title('ethyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Syn-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_isobutyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Syn_all_flies_isobutyl_acetate_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','r')
title('isobutyl acetate');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Syn-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_2_hep_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','k')
hold on;ylim([0 0.06]);
histogram(Syn_all_flies_2_hep_knee(:,1),[1:1:200],'Normalization','probability','EdgeColor','none','FaceColor','r')
title('2 heptanone');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Syn-RNAi');set(gca,'TickDir','out');box off;

%% G
clc;clear;
load('FigS8G.mat');


figure;
max_bin1 = ceil(max(max(GH146_all_flies_IAA(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Syn_all_flies_IAA(1:2:end,:),[],2)));
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



[N,edges,bin] = histcounts(Syn_all_flies_IAA(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Syn_all_flies_IAA(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - isopentyl acetate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','','50','','100','','150','','200','','250'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
%--------------------------------------------------
figure;
max_bin1 = ceil(max(max(GH146_all_flies_2_hep(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Syn_all_flies_2_hep(1:2:end,:),[],2)));
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


[N,edges,bin] = histcounts(Syn_all_flies_2_hep(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Syn_all_flies_2_hep(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - 2 heptanone');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','','50','','100','','150','','200','','250'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
%---------------------------------------------------
figure;
max_bin1 = ceil(max(max(GH146_all_flies_isobutyl_acetate(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Syn_all_flies_isobutyl_acetate(1:2:end,:),[],2)));
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


[N,edges,bin] = histcounts(Syn_all_flies_isobutyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Syn_all_flies_isobutyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - isobutyl acetate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','','100','','150','','200','','250','','300'});
yticklabels({'0','','50','','100','','150','','200','','250'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
%-------------------------------------------------
figure;
max_bin1 = ceil(max(max(GH146_all_flies_ethyl_acetate(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Syn_all_flies_ethyl_acetate(1:2:end,:),[],2)));
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


[N,edges,bin] = histcounts(Syn_all_flies_ethyl_acetate(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Syn_all_flies_ethyl_acetate(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - ethyl acetate');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','','50','','100','','150','','200','','250'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
%-----------------------------------------------
figure;
max_bin1 = ceil(max(max(GH146_all_flies_linalool(1:2:end,:),[],2)));
max_bin2 = ceil(max(max(Syn_all_flies_linalool(1:2:end,:),[],2)));
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


[N,edges,bin] = histcounts(Syn_all_flies_linalool(1:2:end,:),1:max3); 
new_var = [];
new_var_std_N_Data_RNAi = nan(20000,max3);
for i=1:max3
   temp_mat = ( bin == i);
   temp2 = temp_mat .* Syn_all_flies_linalool(2:2:end,:);
    new_var(i) = mean(temp2(temp2~=0));
     new_var_std_N(i,1) = nanstd(temp2(temp2~=0)) ;
    new_var_std_N(i,2) = sum(sum(temp_mat)) ; 
    new_var_std_N_Data_RNAi(1:length(temp2(temp2~=0)),i) = temp2(temp2~=0);
end
hold on ; 
shadedErrorBar([edges(1:end)],new_var,[new_var_std_N(1:edges(end),1)./sqrt(new_var_std_N(1:edges(end),2))],'lineprops','r');

xlabel('Time (sec)');
box off;ylim([0 5]);
set(gca,'TickDir','out');title('Variance as a function of firing rate (20ms) - linalool');ylabel('Variance');
xlabel('firing rate');
xlim([edges(1)-0.25 edges(end)]);
xticklabels({'50','100','150','200','250','300','350'});
yticklabels({'0','','50','','100','','150','','200','','250'});
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Syn-RNAi');
