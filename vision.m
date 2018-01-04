function varargout = dristi(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dristi_OpeningFcn, ...
                   'gui_OutputFcn',  @dristi_OutputFcn, ...
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
%-------------------------------------------------------------------------------------------------------------------
function dristi_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
set(handles.pushbutton6, 'CData', imread('right_click.png'));
set(handles.pushbutton9, 'CData', imread('index.jpg'));
set(handles.pushbutton8, 'CData', imread('left_click.png'));
guidata(hObject, handles);
global vspeed;
global hspeed;
vspeed=3;
hspeed=3;
%-------------------------------------------------------------------------------------------------------------------
function varargout = dristi_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
%---------------------------------------------------------------------------------------------------------------------
function pushbutton1_Callback(hObject, eventdata, handles)
dhristi_settings
%----------------------------------------------------------------------------------------------------------------------
function pushbutton2_Callback(hObject, eventdata, handles)
global data;
global h;
global rct;
global vid;
global robot;
global pmpos;
global cmpos;
global scr;
global mpos;
import java.awt.Robot;
robot = Robot;
scr = get(0, 'screensize');
handles.stop_now=0;
guidata(hObject,handles);  %# Update the GUI data
vid=videoinput('winvideo','1','YUY2_320x240');
set(vid,'ReturnedColorspace','RGB');
preview(vid);
global f;
f=0;
z=(handles.axes1);
while ~(handles.stop_now)
  
    drawnow;  %# Give the button callback a chance to interrupt the opening function
    data=getsnapshot(vid); 
    tt=image(data);

    set(tt,'HitTest','off');

    set(z,'ButtonDownFcn',...  %# Set the ButtonDownFcn for the figure
    @(s,e) pltt(z));
if f==1
match();
if(sum(abs(abs(cmpos)-abs(pmpos)))<=15)
    robot.mousePress  (java.awt.event.InputEvent.BUTTON1_MASK);
    robot.mouseRelease(java.awt.event.InputEvent.BUTTON1_MASK);
    mpos=pmpos;
end;
end;    
    handles = guidata(hObject);  %# Get the newest GUI data
end
%-------------------------------------------------------------------------------------------------------------------------
function pushbutton3_Callback(hObject, eventdata, handles)
global vid;
set(handles.pushbutton3,'BackgroundColor','r')
handles.stop_now=1;
guidata(hObject, handles);
delete(vid);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
function pushbutton5_Callback(hObject, eventdata, handles)
function pushbutton6_Callback(hObject, eventdata, handles)
function pushbutton7_Callback(hObject, eventdata, handles)
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
kboard