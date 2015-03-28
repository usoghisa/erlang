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
