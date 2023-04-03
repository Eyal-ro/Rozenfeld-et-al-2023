%% Figure S7

clc;clear;
load('FigS7.mat');


figure;
for i=1:size(sorted_all_flies_IAA,1)/10
    subplot(size(sorted_all_flies_IAA,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_IAA((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - IAA - control');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'})
hold on;stem(10000, 720,'Marker','none','Color','r')


figure;
for i=1:size(sorted_all_flies_2_hep,1)/10
    subplot(size(sorted_all_flies_2_hep,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none');
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_2_hep((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - 2_hep - control');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_isobutyl_acetate,1)/10
    subplot(size(sorted_all_flies_isobutyl_acetate,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_isobutyl_acetate((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - isobutyl_acetate - control');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_ethyl_acetate,1)/10
    subplot(size(sorted_all_flies_ethyl_acetate,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_ethyl_acetate((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - ethyl_acetate - control');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_linalool,1)/10
    subplot(size(sorted_all_flies_linalool,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_linalool((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - linalool - control');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');

%% Syn-RNAi

figure;
for i=1:size(sorted_all_flies_IAA_Syn_RNAi,1)/10
    subplot(size(sorted_all_flies_IAA_Syn_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_IAA_Syn_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - IAA - Syn-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'})
hold on;stem(10000, 720,'Marker','none','Color','r')


figure;
for i=1:size(sorted_all_flies_2_hep_Syn_RNAi,1)/10
    subplot(size(sorted_all_flies_2_hep_Syn_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none');
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_2_hep_Syn_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - 2_hep - Syn-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_isobutyl_acetate_Syn_RNAi,1)/10
    subplot(size(sorted_all_flies_isobutyl_acetate_Syn_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_isobutyl_acetate_Syn_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - isobutyl_acetate - Syn-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_ethyl_acetate_Syn_RNAi,1)/10
    subplot(size(sorted_all_flies_ethyl_acetate_Syn_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_ethyl_acetate_Syn_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - ethyl_acetate - Syn-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_linalool_Syn_RNAi,1)/10
    subplot(size(sorted_all_flies_linalool_Syn_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_linalool_Syn_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - linalool - Syn-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


%% Cpx-RNAi

figure;
for i=1:size(sorted_all_flies_IAA_Cpx_RNAi,1)/10
    subplot(size(sorted_all_flies_IAA_Cpx_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_IAA_Cpx_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - IAA - Cpx-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'})
hold on;stem(10000, 720,'Marker','none','Color','r')


figure;
for i=1:size(sorted_all_flies_2_hep_Cpx_RNAi,1)/10
    subplot(size(sorted_all_flies_2_hep_Cpx_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none');
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_2_hep_Cpx_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - 2_hep - Cpx-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_isobutyl_acetate_Cpx_RNAi,1)/10
    subplot(size(sorted_all_flies_isobutyl_acetate_Cpx_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_isobutyl_acetate_Cpx_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - isobutyl_acetate - Cpx-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_ethyl_acetate_Cpx_RNAi,1)/10
    subplot(size(sorted_all_flies_ethyl_acetate_Cpx_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_ethyl_acetate_Cpx_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - ethyl_acetate - Cpx-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');


figure;
for i=1:size(sorted_all_flies_linalool_Cpx_RNAi,1)/10
    subplot(size(sorted_all_flies_linalool_Cpx_RNAi,1)/10,1,i)
    set(gca,'XColor', 'none','YColor','none')
    LineFormat = struct();
    LineFormat.Color = [1 1 1];
    LineFormat.LineWidth = 0.35;
    LineFormat.LineStyle = ':';
    plotSpikeRaster(logical(sorted_all_flies_linalool_Cpx_RNAi((i*10)-9:i*10,:)),'PlotType','vertline','VertSpikeHeight',0.8);
    xlim([0 50000]);
end
xlabel('Time (sec)');
set(gca,'XColor', 'k','YColor','none');suptitle('All flies Raster - linalool - Cpx-RNAi');
set(gca,'XTick',0:10000:50000);set(gca,'XTickLabel',{'0','0.5','1','1.5','2','2.5'});
hold on;stem(10000, 720,'Marker','none','Color','r');
