function [mssg4] = socketread(jTcpObj)
%this method get the latest version from the buffer
%continue to read the message until get the last one
%if user does not touch the screen from the beginning
%this loop will wait forever since there is no info from the buffer
%mssg4 is used for return
while 1
    mssg4 = jtcp('read',jTcpObj);
    mssg5 = jtcp('read',jTcpObj);
    if(~isempty(mssg4) &&isempty(mssg5) && ~(strcmp(mssg4,'Hello From Server')))
        break;
    end
end
%display the latest string to the command window if you do not want this,
%you can comment it.
disp(mssg4);