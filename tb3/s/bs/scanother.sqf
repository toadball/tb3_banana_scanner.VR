//hint str(_this);

if ("ACE_Banana" in (items (_this select 0))) then {
	playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", (_this select 0)];
	_string = floor (random 9);
	switch ( _string ) do {
		case 0: { hint "Ring Ring Ring!" };
		case 1: { hint "Boop a doop a doop!" };
		case 2: { hint format["%1 drives me bananas!", name (_this select 0)]; };
		case 3: { hint format["I've got this feeling, %1 seems so appealing!", name (_this select 0)]; };
		case 4: { hint "I've got my hunches, there's bananas in bunches" };
		case 5: { hint format["%1 don't need quarters, don't need dimes!", name (_this select 0)]; };
		case 6: { hint format["%1 has a cellular bananular phone!", name (_this select 0)]; };
		case 7: { hint format["%1 can have his phone and eat it too!", name (_this select 0)]; };
		case 8: { hint "This script drives me, bananas!" };
	};	
} else {
	hint "What a phoney!";
};