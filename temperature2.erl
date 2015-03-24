%% @author upisa01
%% @doc @todo Add description to converterActor.
-module(converterActor).

%% ====================================================================
%% API functions
%% ====================================================================
-export([temperatureConverter/0]).
%% ====================================================================
%% Internal functions
%% ====================================================================

temperatureConverter() ->
 receive
	 {convertToFarrenheith, C , X, D} ->
		ResF = 32+C*9/5,
		io:format("~p d is   ~n", [D]),
		io:format("~p is in C   ~n", [C]),
	  	io:format("~p C is ~p F ~n", [C, 32+C*9/5]),
	 % displayTemperature(ResF),
		D ! {displayFarrenheith, C, ResF},
	 temperatureConverter();
	
	 {convertToCelsious, F} ->
		ResC = (F-32)*5/9,
	 io:format("~p F is ~p C~n", [F, (F-32)*5/9]),
		% CC = "CCC",
	 % displayTemperature(ResC),
	 temperatureConverter();
	 
	 {stop} ->
	 io:format("Stopping~n");
	 	Other ->
	 io:format("Unknown: ~p~n", [Other]),
	 temperatureConverter()
 end.

% compile 	> c(converterActor).
% start process > TemperConvAct = spawn(fun converterActor:temperatureConverter/0).
% start process > 				D = spawn(fun displayActor:displayTemperature/0).
% send msg > TemperConvAct ! {convertToFarrenheith, 32, 99 , D}.
% send msg > TemperConvAct ! {convertToFarrenheith, 32, 99 , D}.
% send msg > TemperAct ! {convertToCelsious, 100}.

---------------------------------------------------
%% @author upisa01
%% @doc @todo Add description to displayActor.
-module(displayActor).
-export([displayTemperature/0]).


displayTemperature() ->
	receive
		 {displayFarrenheith, C, ResF} ->
		  	io:format("~p is the temp in Celsious  ~n", [C]),
			io:format("~p  temp in Fare is ResF ~n", [ResF]),
			displayTemperature();	
		 {displayCelsious, F, C} ->
			%io:format("~p is in Fare  ~n", [F]), 
			io:format("~p is in Celsioud  ~n", [C]),
			displayTemperature();		 
		 {stop} ->
		 	io:format("Stopping~n");
		 Other ->
		 	io:format("Unknown: ~p~n", [Other]),
		 	displayTemperature()
	 end.
	
	
 	

