%% Figure S11
clc;clear;
load('FigS11.mat');

figure;bar(1,nanmean(number_of_Brp_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(number_of_Brp_RNAi),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(number_of_Brp_control,number_of_Brp_RNAi)...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'# of Brp punctae'});
set(gca,'TickDir','out');


[H, pValue, W] = swtest(number_of_Brp_control);
[H, pValue, W] = swtest(number_of_Brp_RNAi);
stats=mes(number_of_Brp_control,number_of_Brp_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(number_of_Brp_control,number_of_Brp_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);
[h,p] = ttest2(number_of_Brp_control,number_of_Brp_RNAi)


figure;bar(1,nanmean(mean_intensity_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(mean_intensity_RNAi),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(mean_intensity_control,mean_intensity_RNAi)...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Mean intensity of Brp punctae'});
set(gca,'TickDir','out');


[H, pValue, W] = swtest(mean_intensity_control);
[H, pValue, W] = swtest(mean_intensity_RNAi);
stats=mes(mean_intensity_control,mean_intensity_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(mean_intensity_control,mean_intensity_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);
[h,p] = ttest2(mean_intensity_control,mean_intensity_RNAi)


figure;bar(1,nanmean(average_size_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(average_size_RNAi),0.4,'FaceAlpha',0.1);
UnivarScatter(padcat(average_size_control,average_size_RNAi)...
    ,'Width',0.2,'Compression',15,'Label',{'Contol','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Mean size of Brp punctae'});
set(gca,'TickDir','out');


[H, pValue, W] = swtest(average_size_control);
[H, pValue, W] = swtest(average_size_RNAi);
stats=mes(average_size_control,average_size_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(average_size_control,average_size_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);
[h,p] = ttest2(average_size_control,average_size_RNAi)
