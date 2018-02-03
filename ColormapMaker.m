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

% Last Modified by GUIDE v2.5 03-Feb-2018 14:33:26

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
    
    pt = interparc(NC,Lab(1,:),Lab(2,:),Lab(3,:),SelectedInterpMethod);
    X=pt(:,1)';
    Y=pt(:,2)';
    Z=pt(:,3)';
    
    RGB=lab2rgb([X' Y' Z']);

    RGB(RGB<0)=0;
    RGB(RGB>1)=1;


    figure(1)
    s=24;
    scatter3(X,Y,Z,s)
    xlabel('L*')
    ylabel('a*')
    zlabel('b*')
    colormap(RGB)
    colorbar

    figure(2)
    colormap(RGB)
    imagesc(sineramp);
    axis equal tight
    colorbar
    
    % share the created colormap with GUI
    handles.RGB=RGB;
    
elseif strcmp(ColorSpace.Name,'RGB') == 1
    disp('Not implemented yet')
    
    for i=1:NCP
        C(:,i)=uisetcolor;

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


