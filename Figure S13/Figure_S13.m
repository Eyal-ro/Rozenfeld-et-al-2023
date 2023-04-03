%% Figure S13
clc;clear;
load('FigS13.mat');

%% A
bar(1,nanmean(IAAvs{:,2}*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(IAAvs{:,3}*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(IAAvs{:,1}*-1),0.4,'FaceAlpha',0.1);
UnivarScatter([IAAvs{:,2}*-1,IAAvs{:,3}*-1,IAAvs{:,1}*-1]...
    ,'Width',0.2,'Compression',15,'Label',{'Orco-GAL4','UAS-Syn-RNAi','Orco-GAL4;UAS-Syn-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Learning index'});ylim([-100 100]);
set(gca,'TickDir','out');
title('High odor concentration');

[H, pValue, W] = swtest(IAAvs{:,2}*-1);
[H, pValue, W] = swtest(IAAvs{:,3}*-1);
[H, pValue, W] = swtest(IAAvs{:,1}*-1);
y=[IAAvs{:,2}*-1,IAAvs{:,3}*-1,IAAvs{:,1}*-1];
[p,tbl,stats] =anova1(y);
multcompare(stats);
mes1way(y,'eta2') ;


%% B

figure;
bar(1,nanmean(Syn_IAA_Y_motion));
hold on;
bar(2,nanmean(Orco_IAA_Y_motion));
hold on;
bar(3,nanmean(Orco_Syn_RNAi_IAA_Y_motion));
UnivarScatter([padcat(Syn_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Syn_RNAi_IAA_Y_motion)],'Width',0.2,'Compression',5,'Label',{'UAS-Syn','Orco-GAL4','Orco;Syn-RNAi'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6]);
xtickangle(45);ylim([0 1]);
box off;ylabel({'% correct choice'});
set(gca,'TickDir','out');


[H, pValue, W] = swtest(Orco_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_Syn_RNAi_IAA_Y_motion);
[H, pValue, W] = swtest(Syn_IAA_Y_motion);


[pval,Factual,Fdist] = randanova1([Orco_IAA_Y_motion',Orco_Syn_RNAi_IAA_Y_motion',Syn_IAA_Y_motion',]...
    ,[ones(size(Orco_IAA_Y_motion')),ones(size(Orco_Syn_RNAi_IAA_Y_motion'))*2,ones(size(Syn_IAA_Y_motion'))*3],1000)


y=[padcat(Syn_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Syn_RNAi_IAA_Y_motion)]
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')