%this is a sample about how to use my function
%pls let me know if there are some bugs exsited
%pls make sure you have set a adb of your pc and have already open the game
%my game will wait you 10s to let you run this software otherwise it thinks
%the connection has timeout.

%create the connection at the beginning 
%create this jtcp object
jTcpObj = jtcp('request','localhost',38300,'timeout',2000); 


%if you want to get the latest version of the string which contains the
%infomation 
%warning: if the user do not have any input(touch the screen) from the begining. this
%function will wait forever until the 
mssg4 = socketread(jTcpObj);
disp(mssg4);

%release the resources and disconnectwhen you finish.
jtcp('close',jTcpObj);