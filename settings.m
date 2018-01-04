function varargout = dhristi_settings(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dhristi_settings_OpeningFcn, ...
                   'gui_OutputFcn',  @dhristi_settings_OutputFcn, ...
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

% --- Executes just before dhristi_settings is made visible.
function dhristi_settings_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
refresh(handles);

% Update handles structure
guidata(hObject, handles);
% --- Outputs from this function are returned to the command line.
function varargout = dhristi_settings_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
% --------------------------------------------------------------------
function clicking_Callback(hObject, eventdata, handles)
refresh(handles);
set(handles.edit1,'visible','on');
set(handles.checkbox1,'visible','on');
set(handles.checkbox2,'visible','on');
set(handles.checkbox3,'visible','on');
set(handles.checkbox4,'visible','on');
set(handles.popupmenu1,'visible','on');
set(handles.popupmenu2,'visible','on');
% --------------------------------------------------------------------
function control_Callback(hObject, eventdata, handles)
refresh(handles);
set(handles.text1,'visible','on');
set(handles.text3,'visible','on');
set(handles.popupmenu3,'visible','on');
set(handles.checkbox5,'visible','on');
set(handles.checkbox6,'visible','on');
set(handles.checkbox7,'visible','on');
% --------------------------------------------------------------------
function speed_Callback(hObject, eventdata, handles)
refresh(handles);
set(handles.text4,'visible','on');
set(handles.popupmenu4,'visible','on');
set(handles.popupmenu5,'visible','on');
% --------------------------------------------------------------------
function auto_Callback(hObject, eventdata, handles)
refresh(handles);
set(handles.text5,'visible','on');
set(handles.uipanel1,'visible','on');
% --------------------------------------------------------------------
function key_Callback(hObject, eventdata, handles)
refresh(handles);
set(handles.text7,'visible','on');
%---------------------------------------------------------------------
function checkbox1_Callback(hObject, eventdata, handles)
clck=get(hObject,'Value');
%---------------------------------------------------------------------
function checkbox2_Callback(hObject, eventdata, handles)
playsound=get(hObject,'Value');
%---------------------------------------------------------------------
function checkbox3_Callback(hObject, eventdata, handles)
doubleclick=get(hObject,'Value');
%---------------------------------------------------------------------
function checkbox4_Callback(hObject, eventdata, handles)
rightclick=get(hObject,'Value');
%---------------------------------------------------------------------
function popupmenu1_Callback(hObject, eventdata, handles)
s = cellstr(get(hObject,'String')) ;
span=s{get(hObject,'Value')};
%---------------------------------------------------------------------
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%---------------------------------------------------------------------
function popupmenu2_Callback(hObject, eventdata, handles)
d= cellstr(get(hObject,'String')) ;
delaytime=d{get(hObject,'Value')}; 
%---------------------------------------------------------------------
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%---------------------------------------------------------------------
function popupmenu3_Callback(hObject, eventdata, handles)
d= cellstr(get(hObject,'String')) ;
delay=d{get(hObject,'Value')}; 
%---------------------------------------------------------------------
function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%---------------------------------------------------------------------
function checkbox5_Callback(hObject, eventdata, handles)
strt=get(hObject,'Value');
%---------------------------------------------------------------------
function checkbox6_Callback(hObject, eventdata, handles)
strt=get(hObject,'Value');
%---------------------------------------------------------------------
function checkbox7_Callback(hObject, eventdata, handles)
strt=get(hObject,'Value');
%---------------------------------------------------------------------
function popupmenu4_Callback(hObject, eventdata, handles)
global hspeed;
hspeed=get(hObject,'Value');
%----------------------------------------------------------------------------
function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%-----------------------------------------------------------------------------
function popupmenu5_Callback(hObject, eventdata, handles)
global vspeed;
vspeed =get(hObject,'Value'); 
%----------------------------------------------------------------------------
function popupmenu5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%----------------------------------------------------------------------------
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%------------------------------------------------------------------------------
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
