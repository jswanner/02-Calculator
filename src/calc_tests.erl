-module(calc_tests).
-import(calc).

-include_lib("eunit/include/eunit.hrl").

add_test_() ->
  [
    ?_assertEqual(2, calc:add([1,1])),
    ?_assertEqual(3, calc:add([2,1])),
    ?_assertEqual(6, calc:add([2,2,2]))
  ].

sub_test_() ->
  [
    ?_assertEqual(0, calc:sub([1,1])),
    ?_assertEqual(1, calc:sub([2,1])),
    ?_assertEqual(4, calc:sub([5,1])),
    ?_assertEqual(3, calc:sub([5,1,1]))
  ].

mul_test_() ->
  [
    ?_assertEqual(1, calc:mul([1,1])),
    ?_assertEqual(2, calc:mul([2,1])),
    ?_assertEqual(5, calc:mul([5,1])),
    ?_assertEqual(10,calc:mul([5,2])),
    ?_assertEqual(20,calc:mul([5,2,2]))
  ].

divide_test_() ->
  [
    ?_assertEqual(1, calc:divide([1,1])),
    ?_assertEqual(2, calc:divide([4,2])),
    ?_assertEqual(3, calc:divide([9,3])),
    ?_assertEqual(5, calc:divide([20,2,2]))
  ].
