function [  ] = pltt(z)
global f;
global h;
global rct;
global robot;
global pmpos;
global cmpos;
global scr;
f=1;
t=get(z,'CurrentPoint');
rct(1:2)=t(1,1:2);
rct(3:4)=10;
rectangle('position',rct,'EdgeColor','g','LineWidth',2);
h=getimage(z);
h=imcrop(h,rct);
pmpos=[scr(3)/2,scr(4)/2];
cmpos=pmpos;
robot.mouseMove(scr(3)/2,scr(4)/2);

end

