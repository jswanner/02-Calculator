-module(calc).
-export([add/1, sub/1, multiply/1, divide/1]).

%% addition
add([H|T]) ->
  add(H, T).

add(Sum, [H|T]) ->
  add(Sum + H, T);

add(Sum, []) ->
  Sum.

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
