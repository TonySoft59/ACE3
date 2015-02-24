/*
 * Author: bux578
 * Returns an array of alive players in a given radius around a given location
 *
 * Arguments:
 * 0: Center position <POSTION>
 * 1: Radius <NUMBER>
 *
 * Return Value:
 * Player units <ARRAY<OBJECT>>
 *
 * Example:
 * [_pos, 100] call FUNC(nearestPlayers)
 *
 * Public: Yes
 */

#include "script_component.hpp"

private ["_position", "_radius", "_nearestPlayers"];

_position = _this select 0;
_radius = _this select 1;

_nearestPlayers = [];

{
  if ([_x] call EFUNC(common,isPlayer) && {alive _x}) then {
    _nearestPlayers pushBack _x;
  };
} forEach (nearestObjects [_position, ["Man"], _radius]);

 _nearestPlayers
