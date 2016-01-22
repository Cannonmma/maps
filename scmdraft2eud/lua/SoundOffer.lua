function Soundoffer(Player, Unit, Number)
CPTrick(0x1505C668, Player, 227, Deaths(Player, AtLeast, 1, Unit))

Trigger { -- S_SoundOffStartTrigger
	players = {Player},
	conditions = {
		Deaths(Player, AtLeast, 1, Unit);
	},
	actions = {
		SetMemory(0x6509B0, Add, 117);
		PreserveTrigger();
		Comment("S_SoundOffStartTrigger");
	},
}


for i = 0, Number do
Trigger { -- S_SoundOffTrigger
	players = {Player},
	conditions = {
		Deaths(Player, AtLeast, 1, Unit);
		Deaths(CurrentPlayer, AtLeast, 1, 0);
	},
	actions = {
		SetMemory(0x6509B0, Add, 69);
		SetDeaths(CurrentPlayer, SetTo, 0, 0);
		SetMemory(0x6509B0, Add, 15);
		PreserveTrigger();
		Comment("S_SoundOffTrigger");
	},
}
end


Trigger { -- S_SoundOffTrigger
	players = {Player},
	conditions = {
		Deaths(Player, AtLeast, 1, Unit);
		Deaths(CurrentPlayer, Exactly, 0, 0);
	},
	actions = {
		SetMemory(0x6509B0, SetTo, Player);
		SetDeaths(Player, Subtract, 1, Unit);
		PreserveTrigger();
		Comment("S_SoundOffTrigger");
	},
}
end