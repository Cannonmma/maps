function CI프레임(Unit,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
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
function SavePointer(Adress, SaveVar, Temp, Player, Size, Condition) -- (주소, 저장 변수, TEMP 변수, 플레이어)주소의 값을 저장 변수에 넣는다.
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

function LoadPointer(SaveVar, Adress, Temp, Player, Size, Condition) -- (저장 변수, 주소, TEMP 변수, 플레이어)변수의 값을 주소로 넣는다.
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

function CPTrick2(Temp1, Temp2, Player, Condition) -- (TEMP1, TEMP2, 플레이어)현재 플레이어의 마린의 데스값을 포인터로 보고 CP를 적용한다.
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



function SavePointer2(SaveVar, Temp, Player, Size, Condition) -- (저장 변수, TEMP변수, 플레이어)현재 플레이어의 마린의 데스값을 저장 변수에 저장한다.
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
function LoadPointer2(SaveVar, Temp, Player, Size, Condition) -- (저장 변수, TEMP 변수, 플레이어)저장 변수의 값을 현재 플레이어의 마린의 데스값에 저장한다.
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
function CPTrickEND(Player, Condition) -- (플레이어)CP트릭을 끝낸다.
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
function CPTrickAdd(Player, Value, Condition) -- (플레이어)CP트릭을 더한다.
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