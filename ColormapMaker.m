function varargout = ColormapMaker(varargin)

% COLORMAPMAKER MATLAB code for ColormapMaker.fig
%      COLORMAPMAKER, by itself, creates a new COLORMAPMAKER or raises the existing
%      singleton*.
%
%      H = COLORMAPMAKER returns the handle to a new COLORMAPMAKER or the handle to
%      the existing singleton*.
%
%      COLORMAPMAKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLORMAPMAKER.M with the given input arguments.
%
%      COLORMAPMAKER('Property','Value',...) creates a new COLORMAPMAKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ColormapMaker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ColormapMaker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ColormapMaker

% Last Modified by GUIDE v2.5 29-May-2018 14:21:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ColormapMaker_OpeningFcn, ...
                   'gui_OutputFcn',  @ColormapMaker_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ColormapMaker is made visible.
function ColormapMaker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ColormapMaker (see VARARGIN)

% Choose default command line output for ColormapMaker
handles.output = hObject;

% set default for centering of colormap
handles.CenterMap=0;
handles.EqualizeLuminance=0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ColormapMaker wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ColormapMaker_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in ListColorSpace.
function ListColorSpace_Callback(hObject, eventdata, handles)
% hObject    handle to ListColorSpace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ListColorSpace contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ListColorSpace


% --- Executes during object creation, after setting all properties.
function ListColorSpace_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ListColorSpace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ListInterp.
function ListInterp_Callback(hObject, eventdata, handles)
% hObject    handle to ListInterp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ListInterp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ListInterp


% --- Executes during object creation, after setting all properties.
function ListInterp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ListInterp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NCPBox_Callback(hObject, eventdata, handles)
% hObject    handle to NCPBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NCPBox as text
%        str2double(get(hObject,'String')) returns contents of NCPBox as a double


% --- Executes during object creation, after setting all properties.
function NCPBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NCPBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NCBox_Callback(hObject, eventdata, handles)
% hObject    handle to NCBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NCBox as text
%        str2double(get(hObject,'String')) returns contents of NCBox as a double


% --- Executes during object creation, after setting all properties.
function NCBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NCBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CreateColomapButton.
function CreateColomapButton_Callback(hObject, eventdata, handles)
% hObject    handle to CreateColomapButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get the select value in the list of color spaces
ColorSpace.SelectedValue=handles.ListColorSpace.Value;
% get what the name of the selected value is
ColorSpace.Name=handles.ListColorSpace.String{ColorSpace.SelectedValue};
% share with the gui
handles.ColorSpace=ColorSpace;

% get the entered for number of control points
NCP=round(str2double(handles.NCPBox.String));
if NCP < 2
    disp('At least two colors are needed to create a colormap. Value changed to 2')
    NCP = 2;
    handles.NCPBox.String=num2str(NCP);   
end


% check if CenterMap exists
tf = isfield(handles,'CenterMap');

if tf == 1
    Center=handles.CenterMap;
    if Center == 1
        disp('making centered colormap ')
        if NCP ~= 3
            disp('Three colors are needed to create a centered colormap. Value changed to 3')
            NCP = 3;             
            handles.NCPBox.String=num2str(NCP);
        end
   
    else
        disp('making colormap without centering')
    end
end


% get the number of colors in the colormap
NC=round(str2double(handles.NCBox.String));
if NC < 3
    disp('At least three colors are needed to create a colormap. Value changed to 3')
    NC = 3;
    handles.NCBox.String=num2str(NC);
end

%get the selected interpolation method
SelectedInterpMethod=handles.ListInterp.String{handles.ListInterp.Value};

if strcmp(ColorSpace.Name,'Lab') == 1
    
    for i=1:NCP
        C(:,i)=uisetcolor;
        Lab(:,i)=rgb2lab(C(:,i)');
    end
    
    if Center ==1
        D1 = ((Lab(1,2)-Lab(1,1))^2 + (Lab(2,2)-Lab(2,1))^2 +(Lab(3,2)-Lab(3,1))^2)^0.5;
        D2 = ((Lab(1,2)-Lab(1,3))^2 + (Lab(2,2)-Lab(2,3))^2 +(Lab(3,2)-Lab(3,3))^2)^0.5;
        D3 = (D1+D2)/2;
        
        % correct the first point
        x = (Lab(1,2)-Lab(1,1));
        y = (Lab(2,2)-Lab(2,1));
        z = (Lab(3,2)-Lab(3,1));
        
        [az,el,r] = cart2sph(x,y,z);
        [x,y,z] = sph2cart(az,el,D3);
        
        Lab(1,1) = Lab(1,2) - x;
        Lab(2,1) = Lab(2,2) - y;
        Lab(3,1) = Lab(3,2) - z;
        
        clearvars x y z az el r
        
        % correct the second point
        x = (Lab(1,2)-Lab(1,3));
        y = (Lab(2,2)-Lab(2,3));
        z = (Lab(3,2)-Lab(3,3));
        
        [az,el,r] = cart2sph(x,y,z);
        [x,y,z] = sph2cart(az,el,D3);
        
        Lab(1,3) = Lab(1,2) - x;
        Lab(2,3) = Lab(2,2) - y;
        Lab(3,3) = Lab(3,2) - z;
        
        
        
        
        
    end
    
    pt = interparc(NC,Lab(1,:),Lab(2,:),Lab(3,:),SelectedInterpMethod);
    X=pt(:,1)';
    Y=pt(:,2)';
    Z=pt(:,3)';
    
    RGB=lab2rgb([X' Y' Z']);
    RGB(RGB<0)=0;
    RGB(RGB>1)=1;
   
   
   if handles.EqualizeLuminance == 1
       % make half-way point half-way luminant
       Lab(1,2) = (Lab(1,1) + Lab(1,3)) / 2;
       
       % interpolate luminance linearly
       x =[0,0.5,1];
       y = Lab(1,:);
       xq = [0:(1/(NC-1)):1];
       yq = interp1(x,y,xq,'linear');
       
       % interpolate a and b with SelectedInterpMethod
       Npt = interparc(NC,Lab(2,:),Lab(3,:),SelectedInterpMethod)';
       X2=yq'; 
       Y2=Npt(1,:)'; 
       Z2=Npt(2,:)'; 
       RGB2=lab2rgb([X2 Y2 Z2]);
       RGB2(RGB2<0)=0;
       RGB2(RGB2>1)=1;
       
       RGB=RGB2;
       X=X2;
       Y=Y2;
       Z=Z2;
   
   end
   %% try to make equalized map from 3 pts. 
   
   
   
   
   f1=figure(1);
    f1.PaperPositionMode = 'manual';
    f1.PaperUnits = 'inches';
    f1.PaperPosition = [0.0 0.25 9 3.5];
    
    %subplot(2,2,[2,4]);
    s=12;
    scatter3(Y,Z,X,s)
    xlabel('a*')
    ylabel('b*')
    zlabel('L*')
    colormap(RGB)
    axis([-100 100 -100 100 0 100])
    view(30,20)
    daspect([1 1 1])
    colorbar
    
    f2 = figure(2)
    subplot(2,1,1)
    colormap(RGB)
    imagesc(sineramp);
    axis([0 NC 0 128])
    %axis equal tight
    
    subplot(2,1,2)
    plot([1:NC],X','-')
    hold on
    plot([1:NC],Y','-')
    hold on
    plot([1:NC],Z','-')
    axis([0 NC -100 100])
    %legend('Location','south','Orientation','horizontal','L*','a*','b*')
 
    print(f1,'Figure','-dpdf'); 
   

   
   
   
   
  
   
   
   
   
    
    
   
    
 
 
   
   
   
   
   
%     ylabel('L*')
    
    
    
    %     figure(2)
%     colormap(RGB)
%     subplot(4,1,1)
%     imagesc(sineramp);
%     axis equal tight
%     %colorbar
%     
%     subplot(4,1,2)
%     plot([1:2:2*NC],X','-')
%     ylabel('L*')
%     axis([0 2*NC 0 100])
%     
%     subplot(4,1,3)
%     plot([1:2:2*NC],Y','-')
%     ylabel('a*')
%     axis([0 2*NC -100 100])
%     
%     subplot(4,1,4)
%     plot([1:2:2*NC],Z','-')
%     ylabel('b*')
%     axis([0 2*NC -100 100])

    %colorbar

% IF EQUALIZE    
%     rgblab = 'RGB';
%     formula = 'CIE76';% or 'CIEDE2000'
%     W = [1 0 0] ;% (Only correct for lightness)
%     sigma = 7;
%     diagnostics = 1;
%     
%     EQRGB = equalisecolourmap(rgblab, RGB, formula, W, sigma, diagnostics);
%     
%     EQLAB= rgb2lab(EQRGB);
%     X2 = EQLAB(:,1)';
%     Y2 = EQLAB(:,2)';
%     Z2 = EQLAB(:,3)';
%     
%      figure(3)
%     colormap(EQRGB)
%     subplot(4,1,1)
%     imagesc(sineramp);
%     axis equal tight
%     colorbar
%     
%     subplot(4,1,2)
%     plot([1:2:2*NC],X2','o-')
%     ylabel('L*')
%     
%     subplot(4,1,3)
%     plot([1:2:2*NC],Y2','o-')
%     ylabel('a*')
%     
%     subplot(4,1,4)
%     plot([1:2:2*NC],Z2','o-')
%     ylabel('b*')
    
    
    
    % share the created colormap with GUI
    handles.RGB=RGB;
    
elseif strcmp(ColorSpace.Name,'RGB') == 1
    disp('Not implemented yet')
    
    for i=1:NCP
        C(:,i)=uisetcolor;
    end
    if Center ==1
        D1 = ((C(1,2)-C(1,1))^2 + (C(2,2)-C(2,1))^2 +(C(3,2)-C(3,1))^2)^0.5
        D2 = ((C(1,2)-C(1,3))^2 + (C(2,2)-C(2,3))^2 +(C(3,2)-C(3,3))^2)^0.5
        D3 = (D1+D2)/2
        
        % correct the first point
        x = (C(1,2)-C(1,1))
        y = (C(2,2)-C(2,1))
        z = (C(3,2)-C(3,1))
        
        [az,el,r] = cart2sph(x,y,z)
        [x,y,z] = sph2cart(az,el,D3)
        
        C(1,1) = C(1,2) - x;
        C(2,1) = C(2,2) - y;
        C(3,1) = C(3,2) - z;
        
        clearvars x y z az el r
        
        % correct the second point
        x = (C(1,2)-C(1,3))
        y = (C(2,2)-C(2,3))
        z = (C(3,2)-C(3,3))
        
        [az,el,r] = cart2sph(x,y,z)
        [x,y,z] = sph2cart(az,el,D3)
        
        C(1,3) = C(1,2) - x;
        C(2,3) = C(2,2) - y;
        C(3,3) = C(3,2) - z;
    end
    
    
    
    pt = interparc(NC,C(1,:),C(2,:),C(3,:),SelectedInterpMethod);
    X=pt(:,1)';
    Y=pt(:,2)';
    Z=pt(:,3)';
    
    RGB=[X' Y' Z'];

    RGB(RGB<0)=0;
    RGB(RGB>1)=1;


    figure(1)
    s=24;
    scatter3(X,Y,Z,s)
    xlabel('R')
    ylabel('G')
    zlabel('B')
    colormap(RGB)
    colorbar
    
    figure(2)
    colormap(RGB)
    imagesc(sineramp);
    axis equal tight
    colorbar
    
else
    disp('How did you get there?')
end
guidata(hObject, handles);


% --- Executes on button press in SaveColormapButton.
function SaveColormapButton_Callback(hObject, eventdata, handles)
% hObject    handle to SaveColormapButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,path] = uiputfile('*.mat','Save Colormap As');
RGB=handles.RGB;
save(fullfile(path,filename),'RGB');

guidata(hObject, handles);


% --- Executes on button press in checkboxCenter.
function checkboxCenter_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCenter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CenterMap=get(hObject,'Value');
guidata(hObject, handles);

% Hint: get(hObject,'Value') returns toggle state of checkboxCenter


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
handles.EqualizeLuminance=get(hObject,'Value');
guidata(hObject, handles);
