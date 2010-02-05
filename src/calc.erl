-module(calc).
-export([add/1, sub/1, multiply/1, divide/1]).

%% addition
%% the same pattern is used for each type of math operation:
%% the function is called with 1 argument, which is a list of numbers,
%% the head of the list is pop'ed off and is the initial total
%% the initial total and the rest of the list will be handled below
add([H|T]) ->
  add(H, T).

%% the next head of the list is pop'ed off,
%% that value is then used to modify the running total
%% this process repeats until the list is empty
add(Total, [H|T]) ->
  add(Total + H, T);

%% once the list is empty, we just need to return our total
add(Total, []) ->
  Total.

%% subtraction
sub([H|T]) ->
  sub(H, T).

sub(Total, [H|T]) ->
  sub(Total - H, T);

sub(Total, []) ->
  Total.

%% multiplication
multiply([H|T]) ->
  multiply(H, T).

multiply(Total, [H|T]) ->
  multiply(Total * H, T);

multiply(Total, []) ->
  Total.

%% division
divide([H|T]) ->
  divide(H, T).

divide(Total, [H|T]) ->
  divide(Total / H, T);

divide(Total, []) ->
  trunc(Total).
