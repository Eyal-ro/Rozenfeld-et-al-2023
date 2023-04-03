%% Figure 3B

clc;clear;
load('Fig3B.mat');


figure;
bar(1, abs(nanmean(nanmean(all_flies_1Hz_control,2))),0.4,'FaceAlpha',0.1);
hold on;
bar(2, abs(nanmean(nanmean(all_flies_1Hz_RNAi,2))),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(abs((nanmean(all_flies_1Hz_control,2))) ,abs(nanmean(all_flies_1Hz_RNAi,2))),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'EPSC amp (pA)'});
set(gca,'TickDir','out');
title('1Hz');


[H, pValue, W] = swtest(abs((nanmean(all_flies_1Hz_control,2))));
[H, pValue, W] = swtest(abs(nanmean(all_flies_1Hz_RNAi,2)));
stats=mes(abs((nanmean(all_flies_1Hz_control,2))),abs(nanmean(all_flies_1Hz_RNAi,2)),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(abs((nanmean(all_flies_1Hz_control,2))),abs(nanmean(all_flies_1Hz_RNAi,2)), 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3D
clc;clear;
load('Fig3D.mat');

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],...
    [std(new_all_flies_PP_10ms_control)/sqrt(length(new_all_flies_PP_10ms_control)) ...
    std(new_all_flies_PP_30ms_control)/sqrt(length(new_all_flies_PP_30ms_control)) ...
    std(new_all_flies_PP_100ms_control)/sqrt(length(new_all_flies_PP_100ms_control)) ...
    std(new_all_flies_PP_300ms_control)/sqrt(length(new_all_flies_PP_300ms_control)) ...
    std(new_all_flies_PP_1000ms_control)/sqrt(length(new_all_flies_PP_1000ms_control))],'lineprops','k')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],'-ok','MarkerFaceColor','k')
hold on

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],...
    [std(new_all_flies_PP_10ms_RNAi)/sqrt(length(new_all_flies_PP_10ms_RNAi)) ...
    std(new_all_flies_PP_30ms_RNAi)/sqrt(length(new_all_flies_PP_30ms_RNAi)) ...
    std(new_all_flies_PP_100ms_RNAi)/sqrt(length(new_all_flies_PP_100ms_RNAi)) ...
    std(new_all_flies_PP_300ms_RNAi)/sqrt(length(new_all_flies_PP_300ms_RNAi)) ...
    std(new_all_flies_PP_1000ms_RNAi)/sqrt(length(new_all_flies_PP_1000ms_RNAi))],'lineprops','g')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],'-og','MarkerFaceColor','g')

box off
xlim([-0 6]);ylim([0 3]);
set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','RNAi');


[H, pValue, W] = swtest(new_all_flies_PP_10ms_control);
[H, pValue, W] = swtest(new_all_flies_PP_10ms_RNAi);
stats=mes(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);


[H, pValue, W] = swtest(new_all_flies_PP_30ms_control);
[H, pValue, W] = swtest(new_all_flies_PP_30ms_RNAi);
stats=mes(new_all_flies_PP_30ms_control,new_all_flies_PP_30ms_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(new_all_flies_PP_30ms_control,new_all_flies_PP_30ms_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3E & F
clc;clear;
load('Fig3E_and_F.mat');



figure;
bar(1, nanmean(mean_rise_time_1Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mean_rise_time_1Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mean_rise_time_1Hz_control ,mean_rise_time_1Hz_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 8]);
box off;ylabel({'eEPSC latency(ms)'});
set(gca,'TickDir','out');
title('eEPSC latency -  1Hz');
[H, pValue, W] = swtest(mean_rise_time_1Hz_control);
[H, pValue, W] = swtest(mean_rise_time_1Hz_RNAi);
stats=mes(mean_rise_time_1Hz_control,mean_rise_time_1Hz_RNAi,'hedgesg');
[h,p] = ttest2(mean_rise_time_1Hz_control ,mean_rise_time_1Hz_RNAi);


figure;
bar(1, nanmean(mean_rise_time_10Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mean_rise_time_10Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mean_rise_time_10Hz_control ,mean_rise_time_10Hz_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 8]);
box off;ylabel({'eEPSC latency(ms)'});
set(gca,'TickDir','out');
title('eEPSC latency -  10Hz');
[H, pValue, W] = swtest(mean_rise_time_10Hz_control);
[H, pValue, W] = swtest(mean_rise_time_10Hz_RNAi);
stats=mes(mean_rise_time_10Hz_control,mean_rise_time_10Hz_RNAi,'hedgesg');
[h,p] = ttest2(mean_rise_time_10Hz_control ,mean_rise_time_10Hz_RNAi);


figure;
bar(1, nanmean(mean_rise_time_20Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mean_rise_time_20Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mean_rise_time_20Hz_control ,mean_rise_time_20Hz_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 8]);
box off;ylabel({'eEPSC latency(ms)'});
set(gca,'TickDir','out');
title('eEPSC latency -  20Hz');
[H, pValue, W] = swtest(mean_rise_time_20Hz_control);
[H, pValue, W] = swtest(mean_rise_time_20Hz_RNAi);
stats=mes(mean_rise_time_20Hz_control,mean_rise_time_20Hz_RNAi,'hedgesg');
[h,p] = ttest2(mean_rise_time_20Hz_control ,mean_rise_time_20Hz_RNAi);



figure;
bar(1, nanmean(mean_rise_time_60Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mean_rise_time_60Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mean_rise_time_60Hz_control ,mean_rise_time_60Hz_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 8]);
box off;ylabel({'eEPSC latency(ms)'});
set(gca,'TickDir','out');
title('eEPSC latency -  60Hz');
[H, pValue, W] = swtest(mean_rise_time_60Hz_control);
[H, pValue, W] = swtest(mean_rise_time_60Hz_RNAi);
stats=mes(mean_rise_time_60Hz_control,mean_rise_time_60Hz_RNAi,'hedgesg');
[h,p] = ttest2(mean_rise_time_60Hz_control ,mean_rise_time_60Hz_RNAi);




%-----------------------------------------------------------------------------
figure;
bar(1, nanmean(std_rise_time_1Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(std_rise_time_1Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(std_rise_time_1Hz_control' ,std_rise_time_1Hz_RNAi'),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 4]);
box off;ylabel({'Latency jitter'});
set(gca,'TickDir','out');
title('Jitter - 1Hz');
[H, pValue, W] = swtest(std_rise_time_1Hz_control);
[H, pValue, W] = swtest(std_rise_time_1Hz_RNAi);
stats=mes(std_rise_time_1Hz_control,std_rise_time_1Hz_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(std_rise_time_1Hz_control,std_rise_time_1Hz_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);


figure;
bar(1, nanmean(std_rise_time_10Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(std_rise_time_10Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(std_rise_time_10Hz_control' ,std_rise_time_10Hz_RNAi'),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 4]);
box off;ylabel({'Latency jitter'});
set(gca,'TickDir','out');
title('Jitter - 10Hz');
[H, pValue, W] = swtest(std_rise_time_10Hz_control);
[H, pValue, W] = swtest(std_rise_time_10Hz_RNAi);
stats=mes(std_rise_time_10Hz_control,std_rise_time_10Hz_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(std_rise_time_10Hz_control,std_rise_time_10Hz_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);


figure;
bar(1, nanmean(std_rise_time_20Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(std_rise_time_20Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(std_rise_time_20Hz_control' ,std_rise_time_20Hz_RNAi'),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 4]);
box off;ylabel({'Latency jitter'});
set(gca,'TickDir','out');
title('Jitter - 20Hz');
[H, pValue, W] = swtest(std_rise_time_20Hz_control);
[H, pValue, W] = swtest(std_rise_time_20Hz_RNAi);
stats=mes(std_rise_time_20Hz_control,std_rise_time_20Hz_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(std_rise_time_20Hz_control,std_rise_time_20Hz_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);



figure;
bar(1, nanmean(std_rise_time_60Hz_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(std_rise_time_60Hz_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(std_rise_time_60Hz_control' ,std_rise_time_60Hz_RNAi'),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 4]);
box off;ylabel({'Latency jitter'});
set(gca,'TickDir','out');
title('Jitter - 60Hz');

[H, pValue, W] = swtest(std_rise_time_60Hz_control);
[H, pValue, W] = swtest(std_rise_time_60Hz_RNAi);
stats=mes(std_rise_time_60Hz_control,std_rise_time_60Hz_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(std_rise_time_60Hz_control,std_rise_time_60Hz_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3G
clc;clear;
load('Fig3G.mat');

figure;
bar(1, abs(nanmean(nanmean(all_flies_1Hz_control,2))),0.4,'FaceAlpha',0.1);
hold on;
bar(2, abs(nanmean(nanmean(all_flies_1Hz_RNAi,2))),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter([padcat(abs((nanmean(all_flies_1Hz_control,2))) ,abs(nanmean(all_flies_1Hz_RNAi,2)))],'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);ylim([0 140])
box off;ylabel({'EPSC (abs pA)'});
set(gca,'TickDir','out');
title('1Hz');

[H, pValue, W] = swtest(abs((nanmean(all_flies_1Hz_control,2))));
[H, pValue, W] = swtest(abs((nanmean(all_flies_1Hz_RNAi,2))));
stats=mes(abs((nanmean(all_flies_1Hz_control,2))),abs((nanmean(all_flies_1Hz_RNAi,2))),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(abs((nanmean(all_flies_1Hz_control,2))),abs((nanmean(all_flies_1Hz_RNAi,2))), 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3H
clc;clear;
load('Fig3H.mat');

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],...
    [std(new_all_flies_PP_10ms_control)/sqrt(length(new_all_flies_PP_10ms_control)) ...
    std(new_all_flies_PP_30ms_control)/sqrt(length(new_all_flies_PP_30ms_control)) ...
    std(new_all_flies_PP_100ms_control)/sqrt(length(new_all_flies_PP_100ms_control)) ...
    std(new_all_flies_PP_300ms_control)/sqrt(length(new_all_flies_PP_300ms_control)) ...
    std(new_all_flies_PP_1000ms_control)/sqrt(length(new_all_flies_PP_1000ms_control))],'lineprops','k')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],'-ok','MarkerFaceColor','k')
hold on

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],...
    [std(new_all_flies_PP_10ms_RNAi)/sqrt(length(new_all_flies_PP_10ms_RNAi)) ...
    std(new_all_flies_PP_30ms_RNAi)/sqrt(length(new_all_flies_PP_30ms_RNAi)) ...
    std(new_all_flies_PP_100ms_RNAi)/sqrt(length(new_all_flies_PP_100ms_RNAi)) ...
    std(new_all_flies_PP_300ms_RNAi)/sqrt(length(new_all_flies_PP_300ms_RNAi)) ...
    std(new_all_flies_PP_1000ms_RNAi)/sqrt(length(new_all_flies_PP_1000ms_RNAi))],'lineprops','g')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],'-og','MarkerFaceColor','g')

box off
xlim([-0 6]);
set(gca,'TickDir','out');
h = zeros(2, 1);ylim([0 3]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','RNAi');

[H, pValue, W] = swtest(new_all_flies_PP_10ms_control);
[H, pValue, W] = swtest(new_all_flies_PP_10ms_RNAi);
stats=mes(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3I
clc;clear;
load('Fig3I.mat');


figure;
bar(1, abs(nanmean(nanmean(all_flies_1Hz_control,2))),0.4,'FaceAlpha',0.1);
hold on;
bar(2, abs(nanmean(nanmean(all_flies_1Hz_RNAi,2))),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(abs((nanmean(all_flies_1Hz_control,2))) ,abs(nanmean(all_flies_1Hz_RNAi,2))),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'EPSC (abs pA)'});
set(gca,'TickDir','out');ylim([0 140]);
title('1Hz');


[H, pValue, W] = swtest(abs((nanmean(all_flies_1Hz_control,2))));
[H, pValue, W] = swtest(abs(nanmean(all_flies_1Hz_RNAi,2)));
stats=mes(abs((nanmean(all_flies_1Hz_control,2))),abs(nanmean(all_flies_1Hz_RNAi,2)),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(abs((nanmean(all_flies_1Hz_control,2))),abs(nanmean(all_flies_1Hz_RNAi,2)), 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 3J
clc;clear;
load('Fig3J.mat');

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],...
    [std(new_all_flies_PP_10ms_control)/sqrt(length(new_all_flies_PP_10ms_control)) ...
    std(new_all_flies_PP_30ms_control)/sqrt(length(new_all_flies_PP_30ms_control)) ...
    std(new_all_flies_PP_100ms_control)/sqrt(length(new_all_flies_PP_100ms_control)) ...
    std(new_all_flies_PP_300ms_control)/sqrt(length(new_all_flies_PP_300ms_control)) ...
    std(new_all_flies_PP_1000ms_control)/sqrt(length(new_all_flies_PP_1000ms_control))],'lineprops','k')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_control) mean(new_all_flies_PP_30ms_control)...
    mean(new_all_flies_PP_100ms_control) mean(new_all_flies_PP_300ms_control)...
    mean(new_all_flies_PP_1000ms_control)],'-ok','MarkerFaceColor','k')
hold on

shadedErrorBar([1 2 3 4 5],[mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],...
    [std(new_all_flies_PP_10ms_RNAi)/sqrt(length(new_all_flies_PP_10ms_RNAi)) ...
    std(new_all_flies_PP_30ms_RNAi)/sqrt(length(new_all_flies_PP_30ms_RNAi)) ...
    std(new_all_flies_PP_100ms_RNAi)/sqrt(length(new_all_flies_PP_100ms_RNAi)) ...
    std(new_all_flies_PP_300ms_RNAi)/sqrt(length(new_all_flies_PP_300ms_RNAi)) ...
    std(new_all_flies_PP_1000ms_RNAi)/sqrt(length(new_all_flies_PP_1000ms_RNAi))],'lineprops','g')
hold on;
plot([1 2 3 4 5], [mean(new_all_flies_PP_10ms_RNAi) mean(new_all_flies_PP_30ms_RNAi)...
    mean(new_all_flies_PP_100ms_RNAi) mean(new_all_flies_PP_300ms_RNAi)...
    mean(new_all_flies_PP_1000ms_RNAi)],'-og','MarkerFaceColor','g')

box off
xlim([-0 6]);
set(gca,'TickDir','out');
h = zeros(2, 1);ylim([0 3]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'g','LineWidth',2);
legend(h, 'Control','RNAi');

[H, pValue, W] = swtest(new_all_flies_PP_10ms_control);
[H, pValue, W] = swtest(new_all_flies_PP_10ms_RNAi);
stats=mes(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(new_all_flies_PP_10ms_control,new_all_flies_PP_10ms_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);

