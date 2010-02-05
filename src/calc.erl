-module(calc).
-export([add/1, sub/1, mul/1, divide/1]).

%% addition
add([H|T]) ->
  add(H, T).

add(Sum, []) ->
  Sum;

add(Sum, [H|T]) ->
  add(Sum + H, T).

%% subtraction
sub([H|T]) ->
  sub(H, T).

sub(Total, []) ->
  Total;

sub(Total, [H|T]) ->
  sub(Total - H, T).

%% multiplication
mul([H|T]) ->
  mul(H, T).

mul(Total, []) ->
  Total;

mul(Total, [H|T]) ->
  mul(Total * H, T).

%% division
divide([H|T]) ->
  divide(H, T).

divide(Total, []) ->
  trunc(Total);

divide(Total, [H|T]) ->
  divide(Total / H, T).
