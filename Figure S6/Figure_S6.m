%% Figure S6

clc;clear;
load('FigS6.mat');

figure;
bar(1,nanmean(nanmean(GH146_all_flies_no_odor/20)),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(nanmean(Cac_all_flies_no_odor/20)),0.4,'FaceAlpha',0.1)
UnivarScatter([nanmean(GH146_all_flies_no_odor/20)',nanmean(Cac_all_flies_no_odor/20)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off
set(gca,'TickDir','out');title('First spike time - no odor');ylabel('First Spike (ms)');


[H, pValue, W] = swtest(nanmean(GH146_all_flies_no_odor/20));
[H, pValue, W] = swtest(nanmean(Cac_all_flies_no_odor/20));
stats=mes(nanmean(GH146_all_flies_no_odor/20),nanmean(Cac_all_flies_no_odor/20),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(nanmean(GH146_all_flies_no_odor/20), nanmean(Cac_all_flies_no_odor/20), 10000, 'plotresult', 1, 'showprogress', 250);


figure;
bar(1,nanmean(nanstd(GH146_all_flies_no_odor/20)),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(nanstd(Cac_all_flies_no_odor/20)),0.4,'FaceAlpha',0.1)
UnivarScatter([nanstd(GH146_all_flies_no_odor/20)',nanstd(Cac_all_flies_no_odor/20)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off
set(gca,'TickDir','out');title('First spike jitter - no odor');ylabel('jitter (ms)');

[H, pValue, W] = swtest(nanstd(GH146_all_flies_no_odor/20));
[H, pValue, W] = swtest(nanstd(Cac_all_flies_no_odor/20));
stats=mes(nanstd(GH146_all_flies_no_odor/20),nanstd(Cac_all_flies_no_odor/20),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(nanstd(GH146_all_flies_no_odor/20), nanstd(Cac_all_flies_no_odor/20), 10000, 'plotresult', 1, 'showprogress', 250);
