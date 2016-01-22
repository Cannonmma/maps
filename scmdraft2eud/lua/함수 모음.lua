function CI������(Unit,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x57D740 - Unit*0x40
		string = SetMemory(e - e%4, SetTo, 65536*NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x57D740 - (Unit-0) * 0x40, d, 65536*math.abs(OldStattxt - NewStattxt))
	end
	return string
end
function SavePointer(Adress, SaveVar, Temp, Player, Size, Condition) -- (�ּ�, ���� ����, TEMP ����, �÷��̾�)�ּ��� ���� ���� ������ �ִ´�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp);
			SetDeaths(Player, SetTo, 0, SaveVar);
			PreserveTrigger();
			Comment("SavePointer"..Adress..SaveVar);
		},
	}
	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Memory(Adress, AtLeast, 2 ^ i);
				Condition
			},
			actions = {
				SetMemory(Adress, Subtract, 2 ^ i);
				SetDeaths(Player, Add, 2^i, SaveVar);
				SetDeaths(Player, Add, 2^i, Temp);
				PreserveTrigger();
				Comment("SavePointer"..Adress..SaveVar);
			}
		}
	end

	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, Temp);
				Condition
			},
			actions = {
				SetMemory(Adress, Add, 2 ^ i);
				SetDeaths(Player, Subtract, 2^i, Temp);
				PreserveTrigger();
				Comment("SavePointer"..Adress..SaveVar);
			}
		}
	end
end

function LoadPointer(SaveVar, Adress, Temp, Player, Size, Condition) -- (���� ����, �ּ�, TEMP ����, �÷��̾�)������ ���� �ּҷ� �ִ´�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp);
			SetMemory(Adress, SetTo, 0);
			PreserveTrigger();
			Comment("LoadPointer"..SaveVar..Adress);
		},
	}
	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, SaveVar);
				Condition
			},
			actions = {
				SetDeaths(Player, Subtract, 2^i, SaveVar);
				SetMemory(Adress, Add, 2 ^ i);
				SetDeaths(Player, Add, 2^i, Temp);
				PreserveTrigger();
				Comment("LoadPointer"..SaveVar..Adress);
			}
		}
	end

	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, Temp);
				Condition
			},
			actions = {
				SetDeaths(Player, Add, 2^i, SaveVar);
				SetDeaths(Player, Subtract, 2^i, Temp);
				PreserveTrigger();
				Comment("LoadPointer"..SaveVar..Adress);
			}
		}
	end
end

function CPTrick(Pointer, Player, Temp, Condition)
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp);
			SetMemory(0x6509B0, SetTo, -0x58A364 / 4);
			PreserveTrigger();
			Comment("CPTrick"..Pointer.."");
		},
	}

	for i = 29, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Memory(Pointer, AtLeast, 2^(i+2));
				Condition
			},
			actions = {
				SetMemory(Pointer, Subtract, 2^(i+2));
				SetDeaths(Player, Add, 2^(i+2), Temp);
				SetMemory(0x6509B0, Add, 2^i);
				PreserveTrigger();
				Comment("CPTrick"..Pointer.."");
			},
		}
	end
	
	for i = 29, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2^(i+2), Temp);
				Condition
			},
			actions = {
				SetMemory(Pointer, Add, 2^(i+2));
				SetDeaths(Player, Subtract, 2^(i+2), Temp);
				PreserveTrigger();
				Comment("CPTrick"..Pointer.."");
			},
		}
	end
end

function CPTrick2(Temp1, Temp2, Player, Condition) -- (TEMP1, TEMP2, �÷��̾�)���� �÷��̾��� ������ �������� �����ͷ� ���� CP�� �����Ѵ�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp2);
			SetDeaths(Player, SetTo, -0x58A364 / 4, Temp1);
			PreserveTrigger();
			Comment("CPTrick2");
		},
	}
	for i = 29, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(CurrentPlayer, AtLeast, 2^(i+2), 0);
				Condition
			},
			actions = {
				SetDeaths(CurrentPlayer, Subtract, 2^(i+2) ,0);
				SetDeaths(Player, Add, 2^(i+2), Temp2);
				SetDeaths(Player, Add, 2^i, Temp1);
				PreserveTrigger();
				Comment("CPTrick2");
			},
		}
	end
	for i = 29, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2^(i+2), Temp2);
				Condition
			},
			actions = {
				SetDeaths(Player, Subtract, 2^(i+2), Temp2);
				SetDeaths(CurrentPlayer, Add, 2^(i+2) ,0);
				PreserveTrigger();
				Comment("CPTrick2");
			},
		}
	end	

	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetMemory(0x6509B0, SetTo, 0);
			PreserveTrigger();
			Comment("CPTrick2");
		},
	}
	
	for i = 29, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2^i, Temp1);
				Condition
			},
			actions = {
				SetMemory(0x6509B0, Add, 2^i);
				SetDeaths(Player, Subtract, 2^i, Temp1);
				PreserveTrigger();
				Comment("CPTrick2");
			},
		}
	end
end



function SavePointer2(SaveVar, Temp, Player, Size, Condition) -- (���� ����, TEMP����, �÷��̾�)���� �÷��̾��� ������ �������� ���� ������ �����Ѵ�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp);
			SetDeaths(Player, SetTo, 0, SaveVar);
			PreserveTrigger();
			Comment("SavePointer"..SaveVar);
		},
	}
	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(CurrentPlayer, AtLeast, 2 ^ i, 0);
				Condition
			},
			actions = {
				SetDeaths(CurrentPlayer, Subtract, 2 ^ i, 0);
				SetDeaths(Player, Add, 2^i, SaveVar);
				SetDeaths(Player, Add, 2^i, Temp);
				PreserveTrigger();
				Comment("SavePointer"..SaveVar);
			}
		}
	end

	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, Temp);
				Condition
			},
			actions = {
				SetDeaths(CurrentPlayer, Add, 2 ^ i, 0);
				SetDeaths(Player, Subtract, 2^i, Temp);
				PreserveTrigger();
				Comment("SavePointer"..SaveVar);
			}
		}
	end
end
function LoadPointer2(SaveVar, Temp, Player, Size, Condition) -- (���� ����, TEMP ����, �÷��̾�)���� ������ ���� ���� �÷��̾��� ������ �������� �����Ѵ�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(Player, SetTo, 0, Temp);
			PreserveTrigger();
			Comment("LoadPointer"..SaveVar);
		},
	}
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetDeaths(CurrentPlayer, SetTo, 0, 0);
			PreserveTrigger();
			Comment("LoadPointer"..SaveVar);
		},
	}

	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, SaveVar);
				Condition
			},
			actions = {
				SetDeaths(Player, Subtract, 2^i, SaveVar);
				SetDeaths(CurrentPlayer, Add, 2 ^ i, 0);
				SetDeaths(Player, Add, 2^i, Temp);
				PreserveTrigger();
				Comment("LoadPointer"..SaveVar);
			}
		}
	end

	for i = Size, 0, -1 do
		Trigger {
			players = {Player},
			conditions = {
				Deaths(Player, AtLeast, 2 ^ i, Temp);
				Condition
			},
			actions = {
				SetDeaths(Player, Add, 2^i, SaveVar);
				SetDeaths(Player, Subtract, 2^i, Temp);
				PreserveTrigger();
				Comment("LoadPointer"..SaveVar);
			}
		}
	end
end
function CPTrickEND(Player, Condition) -- (�÷��̾�)CPƮ���� ������.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetMemory(0x6509B0, SetTo, Player);
			PreserveTrigger();
			Comment("CPTrickEND");
		},
	}
end
function CPTrickAdd(Player, Value, Condition) -- (�÷��̾�)CPƮ���� ���Ѵ�.
	Trigger {
		players = {Player},
		conditions = {
			Always();
			Condition
		},
		actions = {
			SetMemory(0x6509B0, Add, Value);
			PreserveTrigger();
			Comment("CPTrickAdd");
		},
	}
end