function Convertcpt(filename,NC)


%datatable = ImportCPT('viridis.cpt');
datatable = ImportCPT(filename);
R = datatable(:,2);
G = datatable(:,3);
B = datatable(:,4);

R = table2array(R);
G = table2array(G);
B = table2array(B);

R = R./255;
G = G./255;
B = B./255;

RGB = [R G B];
L = length(R);
index = linspace(1,L,L)';

if NC ~= 255
    index_r = linspace(1,L,NC)';

    R_r = interp1(index,R,index_r);
    G_r = interp1(index,G,index_r);
    B_r = interp1(index,B,index_r);

    RGB = [R_r G_r B_r];    
end

[filename,path] = uiputfile('*.mat','Save Colormap As');
save(fullfile(path,filename),'RGB');
end




