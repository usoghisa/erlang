%% @author upisa01
%% @doc @todo Add description to displayActor.
-module(displayActor).
-export([displayTemperature/0]).
% ~.2f

displayTemperature() ->
	receive
		 {displayFarrenheith, C, ResF} ->
			io:format("~p Celsious converted is ~.2f Farrenheith ~n", [C, ResF]),% ~p are val in list,~.2f floatpoint
			displayTemperature();	
		 {displayCelsious, F, ResC} ->
			io:format("~p Farrenheith converted is ~.2f Celsious  ~n", [F, ResC]),% ~p are val in list
		  	%io:format("~p is the temp in Farrenheith  ~n", [F]), io:format("~p  temp in Farrenheith  ~n", [ResC]),
			displayTemperature();		 
		 {stop} ->
		 	io:format("Stopping Display ~n");
		 _ ->
		 	io:format("Sorry Unknown message send to converter."),
		 	displayTemperature()
	 end.
	
	
 	

