#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_common","ace_interaction","ace_interact_menu"};
        author[] = {"commy2"};
        authorUrl = "https://github.com/commy2";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"