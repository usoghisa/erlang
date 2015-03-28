erlang
======
% READ ME instruction to run 
% to compile 	 > c(controllerActor). c(converterActor). c(displayActor). 
% start process1 > TemperConvActID 	= spawn(fun converterActor:temperatureConverter/0).
% start process2 > DisplActID 		= spawn(fun displayActor:displayTemperature/0).
% start process3 > ControllerActID 	= spawn(fun controllerActor:startApp/0).
% start Application send msg 		> ControllerActID ! {sendMsgToConv, TemperConvActID, DisplActID}.
% start Application send Rubish msg > ControllerActID ! {sendRubish}.
% start Application send Stop msg 	> ControllerActID ! {stop, TemperConvActID, DisplActID}.


ECLIPSE PROBLEM____________________________________
after install in eclipse http://erlide.org/ 
create new proj  
RightClic on src fol create new module
RC erl file created go to property and copy de location
type under the console win (loc of folder conteining the erl file)
////VIP___________________________________________
cd("E://software//EclipsePortableERLANG//Data//workspace//erlaUg//erlang1//src//").
// compile c(fileName). or run as erlang application
if problem occur check under Run/running config/runtime/ working dir (check drive name is ok) F:/software/EclipsePortableERLANG/Data/workspace/erlaUg/
