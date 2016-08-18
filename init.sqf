vk_bwr_on = false;
vk_bwr = compile (preprocessFileLineNumbers "vk_bwr.sqf");

//Scan Person
_bananascan_main = ["tb3_bananascan_main", "TB3 Ban-Scan(TM)", "\z\ace\addons\common\data\icon_banana_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;	
_bananascan_bananaAction = ["tb3_bananascan_action1", "Scan for Bananas", "\z\ace\addons\common\data\icon_banana_ca.paa", {_this execVM "tb3\s\bs\scanother.sqf";}, { "ACE_Banana" in items player }] call ace_interact_menu_fnc_createAction;
_bananascan_bwron = ["tb3_bananascan_bwron", "Turn On BWR", "\z\ace\addons\common\data\icon_banana_ca.paa", {[_this select 0] execVM "VK_BWR.sqf"}, { ("ACE_Banana" in items player) && {!vk_bwr_on} }] call ace_interact_menu_fnc_createAction;
_bananascan_bwroff = ["tb3_bananascan_bwroff", "Turn Off BWR", "\z\ace\addons\common\data\icon_banana_ca.paa", {vk_bwr_on = false}, { ("ACE_Banana" in items player) && {vk_bwr_on} }] call ace_interact_menu_fnc_createAction;

{
	if (_x isKindOf "Man") then {

		[_x, 0, ["ACE_MainActions"], _bananascan_main] call ace_interact_menu_fnc_addActionToObject;
		[_x, 0, ["ACE_MainActions","tb3_bananascan_main"], _bananascan_bananaAction] call ace_interact_menu_fnc_addActionToObject;

		[_x, 1, ["ACE_SelfActions"], _bananascan_main] call ace_interact_menu_fnc_addActionToObject;		
		[_x, 1, ["ACE_SelfActions","tb3_bananascan_main"], _bananascan_bwron] call ace_interact_menu_fnc_addActionToObject;		
		[_x, 1, ["ACE_SelfActions","tb3_bananascan_main"], _bananascan_bwroff] call ace_interact_menu_fnc_addActionToObject;		
		
	};
} forEach allUnits;

