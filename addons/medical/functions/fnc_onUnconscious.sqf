/**
 * fnc_onUnconscious.sqf
 * @Descr: N/A
 * @Author: Glowbal
 *
 * @Arguments: []
 * @Return:
 * @PublicAPI: false
 */

#include "script_component.hpp"

private ["_unit", "_state"];
_unit = _this select 0;
_state = _this select 1;

if (_state) then {
    if (GVAR(setting_allowAirwayInjuries)) then {
        if (random(1) >= 0.3) then {
            _unit setvariable [QGVAR(airwayOccluded), true, true];
        };
    };
};