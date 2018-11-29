clc
clear all
close all

%% inputs to be passed to the function
F=50; % frame number
Dt= 1;
Plottype = 'density'; %'UVscatter'; % type of plot 'histogram', 'subpixel'
exppath=fullfile('/Users','david','Documents','PIV_STAGE','SS5');
imgpath=fullfile('Raw');
vectorpath=fullfile('Raw','Vectors');

imgFramepath=fullfile(exppath,imgpath,['IMG_' num2str(F) '.tif']);
I=imread(imgFramepath);

load(fullfile(exppath,vectorpath,['Vector_',num2str(F),'.mat']));
load(fullfile(exppath,vectorpath,['Mask_',num2str(F),'.mat']));

% patch the holes in grids
XX=inpaint_nans(X,3);
YY=inpaint_nans(Y,3);
UU=inpaint_nans(U,3);
VV=inpaint_nans(V,3);

% get the minmax of vector field
xmin=min2(X);
xmax=max2(X);
ymin=min2(Y);
ymax=max2(Y);
xwidth=[xmin xmax];
ywidth=[ymin ymax];

[HRX,HRY]=meshgrid(xmin:xmax,(ymin:ymax));

DX=abs(X(1,1)-X(1,2));
DY=abs(Y(1,1)-Y(2,1));

[Eyx,~] = gradient(VV);
DerivField = Eyx/(DX*Dt);
DerivField=interp2(X,Y,DerivField,HRX,HRY,'linear');

XM=RoiMask(:,1);
YM=RoiMask(:,2);
mask = poly2mask(XM-xmin,YM-ymin,size(DerivField,1),size(DerivField,2));
DerivField(mask == 0) = 0;

%DerivField(isnan(PDerivField))=0;

MaxRange=max(max(DerivField));
MinRange=min(min(DerivField));
Range=[MinRange, MaxRange];
Range=[-0.03, 0.0];

DerivROI=imref2d(size(DerivField),xwidth,ywidth); %defines the xy associated with Exx

%% make figures 

% dummy hole patch of interpolated vectors
typevector(25:30,25:35) = 3;

% make copy of UV
U1 = U; V1=V;

% where vector is not good (typevector not 1), set UV to NaN
U1(typevector ~= 1) = NaN;
V1(typevector ~= 1) = NaN;

% make copy of UV
U3= U; V3 =V;
% where data is not interpolated set to NaN. Keep only interpolated vectors
% in patch
U3(typevector == 1) = NaN;
V3(typevector == 1) = NaN;

% downsample UV
nx=3; ny=3;
XS = X(1:nx:end, 1:ny:end);
YS = Y(1:nx:end, 1:ny:end);
US3 = U3(1:nx:end, 1:ny:end);
VS3 = V3(1:nx:end, 1:ny:end);
US1 = U1(1:nx:end, 1:ny:end);
VS1 = V1(1:nx:end, 1:ny:end);
typevectorS = typevector(1:nx:end, 1:ny:end);

XS=XS(1,:);
YS=(YS(:,1))';

%% second figure
I2=im2double(I); %convert image from uitnt16 to double
IRGB = double2rgb(I2, gray); % convert to RGB
Ider=mat2im(DerivField,parula,Range); % convert matrix to RGB

RA=imref2d(size(I)); % area of image one (background)
[D,RD] = imfuse(IRGB,RA,Ider,DerivROI,'method','blend'); % blend the two images

% make new figure with only one raster image
F2=figure(2)
subimage(D);
iDeriv2=colorbar('location','westoutside');
set(get(iDeriv2,'child'),'YData',Range);
set(iDeriv2,'YLim',Range);  
caxis(Range);
set(gca, 'TickDir', 'out')
ncquiverref(XS,YS,US3,VS3,'pix/frame',2,'',[0.25 0.25 0.25],2); 
hold on
ncquiverref(XS,YS,US1,VS1,'pix/frame',2,'true',[0.0 0.0 0.0],2);
hold on
ROIX=[ROI(1), ROI(1)+ROI(3), ROI(1)+ROI(3), ROI(1),ROI(1)];
ROIY=[ROI(2), ROI(2), ROI(2)+ROI(4), ROI(2)+ROI(4),ROI(2)];
plot(ROIX,ROIY, 'g', 'LineWidth', 1)
hold on
plot(RoiMask(:,1),RoiMask(:,2), 'r', 'LineWidth', 1)

                    