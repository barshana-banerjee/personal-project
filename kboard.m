function varargout = kboard(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kboard_OpeningFcn, ...
                   'gui_OutputFcn',  @kboard_OutputFcn, ...
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

function kboard_OpeningFcn(hObject, eventdata, handles, varargin)
global robot;
robot = java.awt.Robot;
handles.output = hObject;
guidata(hObject, handles);

function varargout = kboard_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_1);
robot.keyRelease  (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton2_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_2);
robot.keyRelease    (java.awt.event.KeyEvent.VK_2);
set(handles.figure1,'visible','on');

function pushbutton3_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_3);
robot.keyRelease    (java.awt.event.KeyEvent.VK_3);
set(handles.figure1,'visible','on');

function pushbutton4_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_4);
robot.keyRelease    (java.awt.event.KeyEvent.VK_4);
set(handles.figure1,'visible','on');

function pushbutton5_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_5);
robot.keyRelease    (java.awt.event.KeyEvent.VK_5);
set(handles.figure1,'visible','on');

function pushbutton6_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_6);
robot.keyRelease    (java.awt.event.KeyEvent.VK_6);
set(handles.figure1,'visible','on');

function pushbutton7_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_7);
robot.keyRelease    (java.awt.event.KeyEvent.VK_7);
set(handles.figure1,'visible','on');

function pushbutton8_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_8);
robot.keyRelease    (java.awt.event.KeyEvent.VK_8);
set(handles.figure1,'visible','on');

function pushbutton9_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_9);
robot.keyRelease    (java.awt.event.KeyEvent.VK_9);
set(handles.figure1,'visible','on');

function pushbutton10_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_0);
robot.keyRelease    (java.awt.event.KeyEvent.VK_0);
set(handles.figure1,'visible','on');

function pushbutton11_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_MINUS);
robot.keyRelease    (java.awt.event.KeyEvent.VK_MINUS);
set(handles.figure1,'visible','on');

function pushbutton12_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_EQUALS);
robot.keyRelease    (java.awt.event.KeyEvent.VK_EQUALS);
set(handles.figure1,'visible','on');

function pushbutton13_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_BACK_SPACE);
robot.keyRelease    (java.awt.event.KeyEvent.VK_BACK_SPACE);
set(handles.figure1,'visible','on');

function pushbutton15_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_DELETE);
robot.keyRelease    (java.awt.event.KeyEvent.VK_DELETE);
set(handles.figure1,'visible','on');

function pushbutton17_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_TAB);
robot.keyRelease    (java.awt.event.KeyEvent.VK_TAB);
set(handles.figure1,'visible','on');

function pushbutton18_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_Q);
robot.keyRelease    (java.awt.event.KeyEvent.VK_Q);
set(handles.figure1,'visible','on');

function pushbutton19_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_W);
robot.keyRelease    (java.awt.event.KeyEvent.VK_W);
set(handles.figure1,'visible','on');

function pushbutton20_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_E);
robot.keyRelease    (java.awt.event.KeyEvent.VK_E);
set(handles.figure1,'visible','on');

function pushbutton21_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_R);
robot.keyRelease    (java.awt.event.KeyEvent.VK_R);
set(handles.figure1,'visible','on');

function pushbutton22_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_T);
robot.keyRelease    (java.awt.event.KeyEvent.VK_T);
set(handles.figure1,'visible','on');

function pushbutton23_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_Y);
robot.keyRelease    (java.awt.event.KeyEvent.VK_Y);
set(handles.figure1,'visible','on');

function pushbutton24_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_U);
robot.keyRelease    (java.awt.event.KeyEvent.VK_U);
set(handles.figure1,'visible','on');

function pushbutton25_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_I);
robot.keyRelease    (java.awt.event.KeyEvent.VK_I);
set(handles.figure1,'visible','on');

function pushbutton26_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_O);
robot.keyRelease    (java.awt.event.KeyEvent.VK_O);
set(handles.figure1,'visible','on');

function pushbutton27_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_P);
robot.keyRelease    (java.awt.event.KeyEvent.VK_P);
set(handles.figure1,'visible','on');

function pushbutton28_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_OPEN_BRACKET);
robot.keyRelease    (java.awt.event.KeyEvent.VK_OPEN_BRACKET);
set(handles.figure1,'visible','on');

function pushbutton29_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_CLOSE_BRACKET);
robot.keyRelease    (java.awt.event.KeyEvent.VK_CLOSE_BRACKET);
set(handles.figure1,'visible','on');

function pushbutton30_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_BACK_SLASH);
robot.keyRelease    (java.awt.event.KeyEvent.VK_BACK_SLASH);
set(handles.figure1,'visible','on');

function pushbutton62_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton63_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_A);
robot.keyRelease    (java.awt.event.KeyEvent.VK_A);
set(handles.figure1,'visible','on');

function pushbutton64_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_S);
robot.keyRelease    (java.awt.event.KeyEvent.VK_S);
set(handles.figure1,'visible','on');

function pushbutton65_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_D);
robot.keyRelease    (java.awt.event.KeyEvent.VK_D);
set(handles.figure1,'visible','on');

function pushbutton66_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_F);
robot.keyRelease    (java.awt.event.KeyEvent.VK_F);
set(handles.figure1,'visible','on');

function pushbutton67_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_G);
robot.keyRelease    (java.awt.event.KeyEvent.VK_G);
set(handles.figure1,'visible','on');

function pushbutton68_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_H);
robot.keyRelease    (java.awt.event.KeyEvent.VK_H);
set(handles.figure1,'visible','on');

function pushbutton69_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_J);
robot.keyRelease    (java.awt.event.KeyEvent.VK_J);
set(handles.figure1,'visible','on');

function pushbutton70_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_K);
robot.keyRelease    (java.awt.event.KeyEvent.VK_K);
set(handles.figure1,'visible','on');

function pushbutton71_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_L);
robot.keyRelease    (java.awt.event.KeyEvent.VK_L);
set(handles.figure1,'visible','on');

function pushbutton72_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_SEMICOLON);
robot.keyRelease    (java.awt.event.KeyEvent.VK_SEMICOLON);
set(handles.figure1,'visible','on');

function pushbutton73_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_QUOTE);
robot.keyRelease    (java.awt.event.KeyEvent.VK_QUOTE);
set(handles.figure1,'visible','on');

function pushbutton74_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_ENTER);
robot.keyRelease    (java.awt.event.KeyEvent.VK_ENTER);
set(handles.figure1,'visible','on');

function pushbutton75_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton76_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton77_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_SHIFT);
robot.keyRelease    (java.awt.event.KeyEvent.VK_SHIFT);
set(handles.figure1,'visible','on');

function pushbutton78_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton79_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_Z);
robot.keyRelease    (java.awt.event.KeyEvent.VK_Z);
set(handles.figure1,'visible','on');

function pushbutton80_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_X);
robot.keyRelease    (java.awt.event.KeyEvent.VK_X);
set(handles.figure1,'visible','on');

function pushbutton81_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_C);
robot.keyRelease    (java.awt.event.KeyEvent.VK_C);
set(handles.figure1,'visible','on');

function pushbutton82_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_V);
robot.keyRelease    (java.awt.event.KeyEvent.VK_V);
set(handles.figure1,'visible','on');

function pushbutton83_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_B);
set(handles.figure1,'visible','on');

function pushbutton84_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_N);
robot.keyRelease    (java.awt.event.KeyEvent.VK_N);
set(handles.figure1,'visible','on');

function pushbutton85_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_M);
robot.keyRelease    (java.awt.event.KeyEvent.VK_M);
set(handles.figure1,'visible','on');

function pushbutton86_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_COMMA);
robot.keyRelease    (java.awt.event.KeyEvent.VK_COMMA);
set(handles.figure1,'visible','on');

function pushbutton87_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_PERIOD);
robot.keyRelease    (java.awt.event.KeyEvent.VK_PERIOD);
set(handles.figure1,'visible','on');

function pushbutton88_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_SLASH);
robot.keyRelease    (java.awt.event.KeyEvent.VK_SLASH);
set(handles.figure1,'visible','on');

function pushbutton89_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_SHIFT);
robot.keyRelease    (java.awt.event.KeyEvent.VK_SHIFT);
set(handles.figure1,'visible','on');

function pushbutton90_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_B);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
set(handles.figure1,'visible','on');

function pushbutton92_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_CONTROL);
robot.keyRelease    (java.awt.event.KeyEvent.VK_CONTROL);
set(handles.figure1,'visible','on');

function pushbutton94_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_ALT);
robot.keyRelease    (java.awt.event.KeyEvent.VK_ALT);
set(handles.figure1,'visible','on');

function pushbutton95_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_SPACE);
robot.keyRelease    (java.awt.event.KeyEvent.VK_SPACE);
set(handles.figure1,'visible','on');

function pushbutton96_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_ALT);
robot.keyRelease    (java.awt.event.KeyEvent.VK_ALT);
set(handles.figure1,'visible','on');

function pushbutton98_Callback(hObject, eventdata, handles)
global robot;
keysettings(handles.figure1);
robot.keyPress  (java.awt.event.KeyEvent.VK_CONTROL);
robot.keyRelease    (java.awt.event.KeyEvent.VK_CONTROL);
set(handles.figure1,'visible','on');
