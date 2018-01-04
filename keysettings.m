function [  ] = keysettings( h )
    global robot;
    set(h,'visible','off');
robot.mousePress  (java.awt.event.InputEvent.BUTTON1_MASK);
robot.mouseRelease(java.awt.event.InputEvent.BUTTON1_MASK);

end