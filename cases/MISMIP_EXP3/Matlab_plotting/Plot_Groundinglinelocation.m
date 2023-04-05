function Plot_Groundinglinelocation

files = dir("../ResultsFiles/*.mat");

for nn=1:numel(files)

    load(files(nn).folder+"/"+files(nn).name);

    CtrlVar.PlotGLs = 0;
    [xGL,yGL] = PlotGroundingLines(CtrlVar,MUA,GF);

    GL1d(nn) = mean(xGL,"all",'omitnan');
    time(nn) = CtrlVar.time;

end

figure; plot(time,GL1d); grid minor; box on;

