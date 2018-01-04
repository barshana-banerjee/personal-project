clear all
close all;
clc;

robot = java.awt.Robot;
set(0,'PointerLocation',[1 1]);
%for t=1:800

%scrSize = get(0,'ScreenSize');
%robot.mouseMove(t,scrSize(2)-t);
%end
%myCallback = @(hObj,event) disp(get(hObj,'SelectionType'));
%set(gcf,'WindowButtonDownFcn', myCallback);


robot.mousePress  (java.awt.event.InputEvent.BUTTON1_MASK);
robot.mouseRelease(java.awt.event.InputEvent.BUTTON1_MASK);

robot.keyPress  (java.awt.event.KeyEvent.VK_1);
robot.keyRelease    (java.awt.event.KeyEvent.VK_1);
robot.keyPress    (java.awt.event.KeyEvent.VK_BACKSPACE);
robot.keyRelease  (java.awt.event.KeyEvent.VK_BACKSPACE);
robot.keyPress    (java.awt.event.KeyEvent.VK_ENTER);
robot.keyRelease  (java.awt.event.KeyEvent.VK_ENTER);