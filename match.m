function [] = match()
global robot;
global data;
global h;
global rct;
global pmpos;
global cmpos;
global hspeed;
global vspeed;
rct=floor(rct);
pmpos=cmpos;
x=zeros(4,1);
swindw=zeros(4,1);
swindw(1:2)=rct(1:2)-15;
swindw(3:4)=rct(3:4)+30;
corr=-9;

ppos(1:2)=rct(1:2);
rectangle('position',swindw,'EdgeColor','b','LineWidth',2);
for i=swindw(1):swindw(1)+swindw(3)-rct(3)-1
    for j=swindw(2):swindw(2)+swindw(4)-rct(4)-1
       
        b=data(j:j+rct(4),i:i+rct(3),1);
        a=h(:,:,1);
        
        a = double(a - sum(a(:)) / numel(a));
        b = double(b - sum(b(:)) / numel(b));
        f = sum(sum(a.*b))/sqrt(sum(sum(a.*a))*sum(sum(b.*b)));
                
        if f>corr
            corr=f;
            x(1)=i;
            x(2)=j;
        end;
    end
end;

x(3)=rct(3);
x(4)=rct(4);
rct=x;
cpos(1:2)=rct(1:2);


rectangle('position',x,'EdgeColor','b','LineWidth',2);
cmpos=[(pmpos(1)+(cpos(1)-ppos(1))*hspeed*5),(pmpos(2)+(cpos(2)-ppos(2))*vspeed*5)];
robot.mouseMove(cmpos(1),cmpos(2));



end

