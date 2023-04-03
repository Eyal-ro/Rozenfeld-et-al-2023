%% Figure S9

clc;clear;
load('FigS9.mat');



%-----------------------------------------
GH146_all_flies_IAA1=GH146_all_flies_IAA1(:,200);
GH146_all_flies_IAA2=GH146_all_flies_IAA2(:,200);
GH146_all_flies_IAA3=GH146_all_flies_IAA3(:,200);

Cac_all_flies_IAA1=Cac_all_flies_IAA1(:,200);
Cac_all_flies_IAA2=Cac_all_flies_IAA2(:,200);
Cac_all_flies_IAA3=Cac_all_flies_IAA3(:,200);

figure;bar(1,mean(nanmean(GH146_all_flies_IAA1,2)),0.4,'FaceAlpha',0.1);
hold on
bar(2,mean(nanmean(GH146_all_flies_IAA2,2)),0.4,'FaceAlpha',0.1);
hold on
bar(3,mean(nanmean(GH146_all_flies_IAA3,2)),0.4,'FaceAlpha',0.1);
hold on
errorbar(1,mean(nanmean(GH146_all_flies_IAA1,2))...
    ,[(nanstd(GH146_all_flies_IAA1))/sqrt(size(GH146_all_flies_IAA1,1))])
hold on
errorbar(2,mean(nanmean(GH146_all_flies_IAA2,2))...
    ,[(nanstd(GH146_all_flies_IAA2))/sqrt(size(GH146_all_flies_IAA2,1))])
hold on
errorbar(3,mean(nanmean(GH146_all_flies_IAA3,2))...
    ,[(nanstd(GH146_all_flies_IAA3))/sqrt(size(GH146_all_flies_IAA3,1))])


hold on
bar(4,mean(nanmean(Cac_all_flies_IAA1,2)),0.4,'FaceAlpha',0.1);
hold on
bar(5,mean(nanmean(Cac_all_flies_IAA2,2)),0.4,'FaceAlpha',0.1);
hold on
bar(6,mean(nanmean(Cac_all_flies_IAA3,2)),0.4,'FaceAlpha',0.1);
hold on
errorbar(4,mean(nanmean(Cac_all_flies_IAA1,2))...
    ,[(nanstd(Cac_all_flies_IAA1))/sqrt(size(Cac_all_flies_IAA1,1))])
hold on
errorbar(5,mean(nanmean(Cac_all_flies_IAA2,2))...
    ,[(nanstd(Cac_all_flies_IAA2))/sqrt(size(Cac_all_flies_IAA2,1))])
hold on
errorbar(6,mean(nanmean(Cac_all_flies_IAA3,2))...
    ,[(nanstd(Cac_all_flies_IAA3))/sqrt(size(Cac_all_flies_IAA3,1))])

xtickangle(45);ylim([0.7 1]);
box off;ylabel({'correlation'});
set(gca,'TickDir','out');xticks(1:6);
xticklabels({'Train 1 wt','Train 2 wt','Train 3 wt',...
    'Train 1 Cac-RNAi','Train 2 Cac-RNAi','Train 3 Cac-RNAi'})

[H, pValue, W] = swtest(nanmean(Cac_all_flies_IAA3,2));
[H, pValue, W] = swtest(nanmean(GH146_all_flies_IAA2,2));
[H, pValue, W] = swtest(nanmean(GH146_all_flies_IAA3,2));


[pval,Factual,Fdist] = randanova1([GH146_all_flies_IAA1',GH146_all_flies_IAA2',GH146_all_flies_IAA3',]...
    ,[ones(size(GH146_all_flies_IAA1')),ones(size(GH146_all_flies_IAA2'))*2,ones(size(GH146_all_flies_IAA3'))*3],1000)

y=[padcat(GH146_all_flies_IAA1,GH146_all_flies_IAA2,GH146_all_flies_IAA3)]
[p,tbl,stats] =anova1(y)
[c,m] = multcompare(stats)
mes1way(y,'eta2')

[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_IAA1_new,GH146_all_flies_IAA3_new, 10000, 'plotresult', 1, 'showprogress', 250);


[pval,Factual,Fdist] = randanova1([Cac_all_flies_IAA1',Cac_all_flies_IAA2',Cac_all_flies_IAA3',]...
    ,[ones(size(Cac_all_flies_IAA1')),ones(size(Cac_all_flies_IAA2'))*2,ones(size(Cac_all_flies_IAA3'))*3],1000)

y=[padcat(Cac_all_flies_IAA1,Cac_all_flies_IAA2,Cac_all_flies_IAA3)]
[p,tbl,stats] =anova1(y)
[c,m] = multcompare(stats)
mes1way(y,'eta2')


