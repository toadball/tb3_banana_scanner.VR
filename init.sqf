//Scan Person
_bananascan_main = ["tb3_bananascan_main", "TB3 Ban-Scan(TM)", "\z\ace\addons\common\data\icon_banana_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;	
_bananascan_bananaAction = ["tb3_bananascan_action1", "Scan for Bananas", "\z\ace\addons\common\data\icon_banana_ca.paa", {_this execVM "tb3\s\bs\scanother.sqf";}, { "ACE_Banana" in items player }] call ace_interact_menu_fnc_createAction;

{
	if (_x isKindOf "Man") then {

		[_x, 0, ["ACE_MainActions"], _bananascan_main] call ace_interact_menu_fnc_addActionToObject;
		[_x, 0, ["ACE_MainActions","tb3_bananascan_main"], _bananascan_bananaAction] call ace_interact_menu_fnc_addActionToObject;
	};
} forEach allUnits;