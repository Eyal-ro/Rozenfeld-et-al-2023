%% Figure S12
clc;clear;
load('FigS12.mat');

figure;
histogram(GH146_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none')
hold on;ylim([0 0.06]);
histogram(Glu_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none')
title('knee of curve');
xlabel('Integration window (ms)');ylabel('prob');
legend('Control','Glu-RNAi');set(gca,'TickDir','out');box off;


figure;
histogram(GH146_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none')
hold on;ylim([0 0.06]);
histogram(Glu_all_flies_all_odors_knee,[1:1:200],'Normalization','probability','EdgeColor','none')
title('knee of curve');
xlabel('Integration window (ms)');ylabel('prob');xlim([0 50]);
legend('Control','Glu-RNAi');set(gca,'TickDir','out');box off;

[H, pValue, W] = swtest(GH146_all_flies_all_odors_knee);
[H, pValue, W] = swtest(Glu_all_flies_all_odors_knee);
stats=mes(GH146_all_flies_all_odors_knee,Glu_all_flies_all_odors_knee,'hedgesg');
[p, observeddifference, effectsize] = permutationTest(GH146_all_flies_all_odors_knee, Glu_all_flies_all_odors_knee, 10000, 'plotresult', 1, 'showprogress', 250);
