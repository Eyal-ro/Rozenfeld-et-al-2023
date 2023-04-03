%% Figure 8B
clc;clear;
load('Fig8B.mat');

bar(1,nanmean(IAAvs{:,2}*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(IAAvs{:,3}*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(IAAvs{:,1}*-1),0.4,'FaceAlpha',0.1);
UnivarScatter([IAAvs{:,2}*-1,IAAvs{:,3}*-1,IAAvs{:,1}*-1]...
    ,'Width',0.2,'Compression',15,'Label',{'Orco-GAL4','UAS-Cac-RNAi','Orco-GAL4;UAS-Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Learning index'});ylim([-100 100]);
set(gca,'TickDir','out');

[H, pValue, W] = swtest(IAAvs{:,2}*-1);
[H, pValue, W] = swtest(IAAvs{:,3}*-1);
[H, pValue, W] = swtest(IAAvs{:,1}*-1);
y=[IAAvs{:,2}*-1,IAAvs{:,3}*-1,IAAvs{:,1}*-1];
[p,tbl,stats] =anova1(y);
multcompare(stats);
mes1way(y,'eta2') ;

%% Figure 8D
clc;clear;
load('Fig8D.mat');

figure;
bar(1,nanmean(Cac_IAA_Y_motion));
hold on;
bar(2,nanmean(Orco_IAA_Y_motion));
hold on;
bar(3,nanmean(Orco_Cac_RNAi_IAA_Y_motion));
UnivarScatter([padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)],'Width',0.2,'Compression',5,'Label',{'Cac','Orco','Orco;Cac-RNAi'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',0.2);
xtickangle(45);ylim([0 1]);
box off;ylabel({'% correct choice'});
set(gca,'TickDir','out');
[H, pValue, W] = swtest(Cac_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_Cac_RNAi_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_IAA_Y_motion);

[pval,Factual,Fdist] = randanova1([Cac_IAA_Y_motion',Orco_IAA_Y_motion',Orco_Cac_RNAi_IAA_Y_motion',]...
    ,[ones(size(Cac_IAA_Y_motion')),ones(size(Orco_IAA_Y_motion'))*2,ones(size(Orco_Cac_RNAi_IAA_Y_motion'))*3],1000)


y=[padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)]
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Figure 8E
clc;clear;
load('Fig8E.mat');
bar(1,nanmean(orco*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(cac*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(orco_cac*-1),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(orco*-1,cac*-1,orco_cac*-1),'Width',0.2,'Compression',15,'Label',{'Orco-GAL4','UAS-Cac-RNAi','Orco-GAL4;UAS-Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Learning index'});ylim([-100 100]);
set(gca,'TickDir','out');
[H, pValue, W] = swtest(orco*-1);
[H, pValue, W] = swtest(cac*-1);
[H, pValue, W] = swtest(orco_cac*-1);
y=[padcat(orco*-1,cac*-1,orco_cac*-1)];
[p,tbl,stats] =anova1(y);
multcompare(stats);
mes1way(y,'eta2') ;
%% Figure 8F
clc;clear;
load('Fig8F.mat');

figure;
bar(1,nanmean(Cac_IAA_Y_motion));
hold on;
bar(2,nanmean(Orco_IAA_Y_motion));
hold on;
bar(3,nanmean(Orco_Cac_RNAi_IAA_Y_motion));
UnivarScatter([padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)],'Width',0.2,'Compression',5,'Label',{'Cac','Orco','Orco;Cac-RNAi'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6]);
xtickangle(45);ylim([0 1]);
box off;ylabel({'% correct choice'});
set(gca,'TickDir','out');
[H, pValue, W] = swtest(Cac_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_Cac_RNAi_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_IAA_Y_motion);

[pval,Factual,Fdist] = randanova1([Cac_IAA_Y_motion',Orco_IAA_Y_motion',Orco_Cac_RNAi_IAA_Y_motion',]...
    ,[ones(size(Cac_IAA_Y_motion')),ones(size(Orco_IAA_Y_motion'))*2,ones(size(Orco_Cac_RNAi_IAA_Y_motion'))*3],1000)


y=[padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)]
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Figure 8G
clc;clear;
load('Fig8G.mat');

bar(1,nanmean(orco*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(cac*-1),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(orco_cac*-1),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(orco*-1,cac*-1,orco_cac*-1),'Width',0.2,'Compression',15,'Label',{'Orco-GAL4','UAS-Cac-RNAi','Orco-GAL4;UAS-Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Learning index'});ylim([-100 100]);
set(gca,'TickDir','out');

[H, pValue, W] = swtest(orco*-1);
[H, pValue, W] = swtest(cac*-1);
[H, pValue, W] = swtest(orco_cac*-1);
y=[padcat(orco*-1,cac*-1,orco_cac*-1)];
[p,tbl,stats] =anova1(y);
multcompare(stats);
mes1way(y,'eta2') ;

[pval,Factual,Fdist] = randanova1([orco*-1;cac*-1;orco_cac*-1]...
    ,[ones(size(orco*-1'));ones(size(cac*-1'))*2;ones(size(orco_cac*-1'))*3],1000)


%% Figure 8H
clc;clear;
load('Fig8H.mat');


figure;
bar(1,nanmean(Cac_IAA_Y_motion));
hold on;
bar(2,nanmean(Orco_IAA_Y_motion));
hold on;
bar(3,nanmean(Orco_Cac_RNAi_IAA_Y_motion));
UnivarScatter([padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)],'Width',0.2,'Compression',5,'Label',{'Cac','Orco','Orco;Cac-RNAi'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6]);
xtickangle(45);ylim([0 1]);
box off;ylabel({'% correct choice'});
set(gca,'TickDir','out');

[H, pValue, W] = swtest(Cac_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_Cac_RNAi_IAA_Y_motion);
[H, pValue, W] = swtest(Orco_IAA_Y_motion);

[pval,Factual,Fdist] = randanova1([Cac_IAA_Y_motion',Orco_IAA_Y_motion',Orco_Cac_RNAi_IAA_Y_motion',]...
    ,[ones(size(Cac_IAA_Y_motion')),ones(size(Orco_IAA_Y_motion'))*2,ones(size(Orco_Cac_RNAi_IAA_Y_motion'))*3],1000)


y=[padcat(Cac_IAA_Y_motion,Orco_IAA_Y_motion,Orco_Cac_RNAi_IAA_Y_motion)]
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

