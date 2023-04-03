%% Figure 5B
clc;clear;
load('Fig5B.mat');


figure;
bar(1, nanmean(mini_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mini_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mini_control,mini_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'EPSC (abs pA)'});
set(gca,'TickDir','out');
title('mini EPSC');ylim([0 4]);
[H, pValue, W] = swtest(mini_control);
[H, pValue, W] = swtest(mini_RNAi);
stats=mes(mini_control,mini_RNAi,'hedgesg');
[h,p] = ttest2(mini_control,mini_RNAi);


figure;
bar(1, nanmean(mini_freq_control),0.4,'FaceAlpha',0.1);
hold on;
bar(2, nanmean(mini_freq_RNAi),0.4,'FaceAlpha',0.1);
hold on;
UnivarScatter(padcat(mini_freq_control,mini_freq_RNAi),'Width',0.2,'Compression',15,'Label',{'control','RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Mini frequency (Hz)'});
set(gca,'TickDir','out');
title('mini EPSC');ylim([0 10]);
[H, pValue, W] = swtest(mini_freq_control);
[H, pValue, W] = swtest(mini_freq_RNAi);
stats=mes(mini_freq_control,mini_freq_RNAi,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(mini_freq_control, mini_freq_RNAi, 10000, 'plotresult', 1, 'showprogress', 250);

%% Figure 5C
clc;clear;
load('Fig5C.mat');

figure;
bar(1,nanmean(abs(all_flies_wt)),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(abs(all_flies_RNAi)),0.4,'FaceAlpha',0.1);
hold on
UnivarScatter([padcat(abs(all_flies_wt)',abs(all_flies_RNAi)')]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'current (pA)'});
set(gca,'TickDir','out');
title('Nicotine response');
[H, pValue, W] = swtest(abs(all_flies_wt));
[H, pValue, W] = swtest(abs(all_flies_RNAi));
stats=mes(abs(all_flies_wt),abs(all_flies_RNAi),'hedgesg');
[p, observeddifference, effectsize] = permutationTest(abs(all_flies_wt),abs(all_flies_RNAi), 10000, 'plotresult', 1, 'showprogress', 250);



%% Figure 5D
clc;clear;
load('Fig5D.mat');

figure;
bar(1,nanmean(abs(num_brp_control)),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(abs(number_brp_RNAi)),0.4,'FaceAlpha',0.1);
hold on
UnivarScatter([padcat(abs(num_brp_control),abs(number_brp_RNAi))]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'# of Brp punctae'});
set(gca,'TickDir','out');
[H, pValue, W] = swtest(abs(num_brp_control));
[H, pValue, W] = swtest(abs(number_brp_RNAi));
stats=mes(num_brp_control,number_brp_RNAi,'hedgesg');
[h,p] = ttest2(num_brp_control,number_brp_RNAi)



figure;
bar(1,nanmean(abs(intensity_brp_control)),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(abs(intensity_brp_RNAi)),0.4,'FaceAlpha',0.1);
hold on
UnivarScatter([padcat(abs(intensity_brp_control),abs(intensity_brp_RNAi))]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Mean intensity of Brp punctae'});
set(gca,'TickDir','out');
[H, pValue, W] = swtest(abs(intensity_brp_control));
[H, pValue, W] = swtest(abs(intensity_brp_RNAi));
stats=mes(intensity_brp_control,intensity_brp_RNAi,'hedgesg');
[h,p] = ttest2(intensity_brp_control,intensity_brp_RNAi)


figure;
bar(1,nanmean(abs(size_brp_control)),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(abs(size_brp_RNAi)),0.4,'FaceAlpha',0.1);
hold on
UnivarScatter([padcat(abs(size_brp_control),abs(size_brp_RNAi))]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','Cac-RNAi'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Mean size of Brp punctae (m2)'});
set(gca,'TickDir','out');
[H, pValue, W] = swtest(abs(size_brp_control));
[H, pValue, W] = swtest(abs(size_brp_RNAi));
stats=mes(size_brp_control,size_brp_RNAi,'hedgesg');
[h,p] = ttest2(size_brp_control,size_brp_RNAi)

