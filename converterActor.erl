%% @author upisa01
%% @doc @todo Add description to converterActor.
-module(converterActor).
-export([temperatureConverter/0]).
%% ====================================================================
%% Internal functions

temperatureConverter() ->
 receive
	 {convertToFarrenheith, C, DisplActID } ->
		ResF = 32+C*9/5,
		DisplActID  ! {displayFarrenheith, C, ResF},
	 temperatureConverter();
	
	 {convertToCelsious, F,DisplActID} -> 
		ResC = (F-32)*5/9,
		DisplActID  ! {displayCelsious, F, ResC},
	 temperatureConverter();
	 
	 {stop, DisplActID} ->
		DisplActID  ! {stop},
	 	io:format("Stopping Converter ~n");
	 _ ->
	 io:format("Sorry Unknown message send to converter. ~n "),
	 temperatureConverter()
 end.





