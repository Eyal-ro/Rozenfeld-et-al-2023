%% Figure S2A

clc;clear;
load('FigS2A.mat');


figure
shadedErrorBar([700:1600],smooth(mean(all_flies_IAA_control(700:1600,:),2)),smooth([std(all_flies_IAA_control(700:1600,:)')/sqrt(size(all_flies_IAA_control,2))]),'lineprops','k');
hold on
shadedErrorBar([700:1600],smooth(mean(all_flies_IAA_Cac(700:1600,:),2)),smooth([std(all_flies_IAA_Cac(700:1600,:)')/sqrt(size(all_flies_IAA_Cac,2))]),'lineprops','r');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
set(gca,'XTick',[700 800 900 1000 1100 1200 1300 1400 1500 1600],...
    'XTickLabel',...
    {'0'   , '3.3'   , '6.6'   , '9.9'   ,'13.2'   ,'16.5'  , '19.8' ,  '23.1'   ,'26.4'   ,'29.7'});
line([922 922], [ylim],'Color','black','LineStyle','--','LineWidth',0.5);
line([1072 1072], [ylim],'Color','black','LineStyle','--','LineWidth',0.5);
box off
 set(gca,'TickDir','out')
title('isopentyl acetate odor response')
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


figure
shadedErrorBar([700:1600],smooth(mean(all_flies_isobutyl_acetate_control(700:1600,:),2)),smooth([std(all_flies_isobutyl_acetate_control(700:1600,:)')/sqrt(size(all_flies_isobutyl_acetate_control,2))]),'lineprops','k');
hold on
shadedErrorBar([700:1600],smooth(mean(all_flies_isobutyl_acetate_Cac(700:1600,:),2)),smooth([std(all_flies_isobutyl_acetate_Cac(700:1600,:)')/sqrt(size(all_flies_isobutyl_acetate_Cac,2))]),'lineprops','r');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
set(gca,'XTick',[700 800 900 1000 1100 1200 1300 1400 1500 1600],...
    'XTickLabel',...
    {'0'   , '3.3'   , '6.6'   , '9.9'   ,'13.2'   ,'16.5'  , '19.8' ,  '23.1'   ,'26.4'   ,'29.7'});
line([922 922], [ylim],'Color','black','LineStyle','--','LineWidth',0.5);
line([1072 1072], [ylim],'Color','black','LineStyle','--','LineWidth',0.5);
box off
 set(gca,'TickDir','out')
title('isobutyl acetate odor response')
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Control','Cac-RNAi');


max_control_isobutyl_acetate=[];
for i=1:size(all_flies_isobutyl_acetate_control,2)
    
    max_control_isobutyl_acetate=[max_control_isobutyl_acetate,max(all_flies_isobutyl_acetate_control(922:1100,i))];
end
max_Cac_isobutyl_acetate=[];
for i=1:size(all_flies_isobutyl_acetate_Cac,2)
    
    max_Cac_isobutyl_acetate=[max_Cac_isobutyl_acetate,max(all_flies_isobutyl_acetate_Cac(922:1100,i))];
end

figure;bar(1,nanmean(max_control_isobutyl_acetate),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_Cac_isobutyl_acetate),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(max_control_isobutyl_acetate',max_Cac_isobutyl_acetate')...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Peak \DeltaF/F'});
set(gca,'TickDir','out');
title('isobutyl_acetate-Bar');

[H, pValue, W] = swtest(max_control_isobutyl_acetate);
[H, pValue, W] = swtest(max_Cac_isobutyl_acetate);
stats=mes(max_control_isobutyl_acetate,max_Cac_isobutyl_acetate,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(max_control_isobutyl_acetate,max_Cac_isobutyl_acetate, 10000, 'plotresult', 1, 'showprogress', 250);



max_control_IAA=[];
for i=1:size(all_flies_IAA_control,2)
    
    max_control_IAA=[max_control_IAA,max(all_flies_IAA_control(922:1100,i))];
end
max_Cac_IAA=[];
for i=1:size(all_flies_IAA_Cac,2)
    
    max_Cac_IAA=[max_Cac_IAA,max(all_flies_IAA_Cac(922:1100,i))];
end

figure;bar(1,nanmean(max_control_IAA),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_Cac_IAA),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(max_control_IAA',max_Cac_IAA')...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Peak \DeltaF/F'});
set(gca,'TickDir','out');
title('isopentyl acetae-Bar');

[H, pValue, W] = swtest(max_control_IAA);
[H, pValue, W] = swtest(max_Cac_IAA);
stats=mes(max_control_IAA,max_Cac_IAA,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(max_control_IAA,max_Cac_IAA, 10000, 'plotresult', 1, 'showprogress', 250);
%% Figure S2B

clc;clear;
load('FigS2B.mat');

figure;bar(1,nanmean(num_cac_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(num_cac_RNAi),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(num_cac_control,num_cac_RNAi)...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'# of Cac punctae'});
set(gca,'TickDir','out');

[H, pValue, W] = swtest(num_cac_control);
[H, pValue, W] = swtest(num_cac_RNAi);
stats=mes(num_cac_control,num_cac_RNAi,'hedgesg');
[h,p] = ttest2(num_cac_control,num_cac_RNAi);

%% Figure S2C

clc;clear;
load('FigS2C.mat');

figure;
bar(1,nanmean(GH146_all_flies_IAA_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(CaC_all_flies_IAA_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_IAA_new,2),size(CaC_all_flies_IAA_new,2));
GH146_all_flies_IAA_new(:,end:max_len) = nan;
CaC_all_flies_IAA_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_IAA_new)',(CaC_all_flies_IAA_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-IAA');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_IAA_new);
[H, pValue, W] = swtest(CaC_all_flies_IAA_new);
stats=mes(GH146_all_flies_IAA_new,CaC_all_flies_IAA_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_IAA_new,CaC_all_flies_IAA_new, 10000, 'plotresult', 1, 'showprogress', 250);


figure;
bar(1,nanmean(GH146_all_flies_2_hep_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(CaC_all_flies_2_hep_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_2_hep_new,2),size(CaC_all_flies_2_hep_new,2));
GH146_all_flies_2_hep_new(:,end:max_len) = nan;
CaC_all_flies_2_hep_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_2_hep_new)',(CaC_all_flies_2_hep_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-2_hep');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_2_hep_new);
[H, pValue, W] = swtest(CaC_all_flies_2_hep_new);
stats=mes(GH146_all_flies_2_hep_new,CaC_all_flies_2_hep_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_2_hep_new,CaC_all_flies_2_hep_new, 10000, 'plotresult', 1, 'showprogress', 250);




figure;
bar(1,nanmean(GH146_all_flies_ethyl_acetate_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(CaC_all_flies_ethyl_acetate_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_ethyl_acetate_new,2),size(CaC_all_flies_ethyl_acetate_new,2));
GH146_all_flies_ethyl_acetate_new(:,end:max_len) = nan;
CaC_all_flies_ethyl_acetate_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_ethyl_acetate_new)',(CaC_all_flies_ethyl_acetate_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-ethyl_acetate');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_ethyl_acetate_new);
[H, pValue, W] = swtest(CaC_all_flies_ethyl_acetate_new);
stats=mes(GH146_all_flies_ethyl_acetate_new,CaC_all_flies_ethyl_acetate_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_ethyl_acetate_new,CaC_all_flies_ethyl_acetate_new, 10000, 'plotresult', 1, 'showprogress', 250);




figure;
bar(1,nanmean(GH146_all_flies_isobutyl_acetate_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(CaC_all_flies_isobutyl_acetate_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_isobutyl_acetate_new,2),size(CaC_all_flies_isobutyl_acetate_new,2));
GH146_all_flies_isobutyl_acetate_new(:,end:max_len) = nan;
CaC_all_flies_isobutyl_acetate_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_isobutyl_acetate_new)',(CaC_all_flies_isobutyl_acetate_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-isobutyl_acetate');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_isobutyl_acetate_new);
[H, pValue, W] = swtest(CaC_all_flies_isobutyl_acetate_new);
stats=mes(GH146_all_flies_isobutyl_acetate_new,CaC_all_flies_isobutyl_acetate_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_isobutyl_acetate_new,CaC_all_flies_isobutyl_acetate_new, 10000, 'plotresult', 1, 'showprogress', 250);

figure;
bar(1,nanmean(GH146_all_flies_linalool_new),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(CaC_all_flies_linalool_new),0.4,'FaceAlpha',0.1)
max_len=max(size(GH146_all_flies_linalool_new,2),size(CaC_all_flies_linalool_new,2));
GH146_all_flies_linalool_new(:,end:max_len) = nan;
CaC_all_flies_linalool_new(:,end:max_len) = nan;
UnivarScatter([(GH146_all_flies_linalool_new)',(CaC_all_flies_linalool_new)']...
    ,'Width',0.2,'Compression',15,'Label',{'Control','Cac-RNAi'},'Whiskers','none')
xtickangle(45)
box off;ylim([0 200]);
set(gca,'TickDir','out');title('Firing rate-bars-linalool');ylabel('FR');

[H, pValue, W] = swtest(GH146_all_flies_linalool_new);
[H, pValue, W] = swtest(CaC_all_flies_linalool_new);
stats=mes(GH146_all_flies_linalool_new,CaC_all_flies_linalool_new,'hedgesg')
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_linalool_new,CaC_all_flies_linalool_new, 10000, 'plotresult', 1, 'showprogress', 250);



