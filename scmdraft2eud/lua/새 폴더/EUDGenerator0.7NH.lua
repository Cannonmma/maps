function SetMemory2(a,b,c)
	 string = SetMemory(a - a%4, b, c*256^(a%4))
	 return string
end


function U이름(Unit,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x660260 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660260 + (Unit-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
function U체력(Unit,OldHpPointX256,NewHpPointX256) -- (ID, OldCode, NewCode)
	local d, e
	if OldHpPointX256 == SetTo then
		e = 0x662350 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewHpPointX256)
	else
		if OldHpPointX256 < NewHpPointX256 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662350 + (Unit-0) * 4, d, math.abs(OldHpPointX256 - NewHpPointX256))
	end
	return string
end
function U쉴드(Unit,OldShPoint,NewShPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldShPoint == SetTo then
		e = 0x660E00 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewShPoint)
	else
		if OldShPoint < NewShPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660E00 + (Unit-0) * 2, d, math.abs(OldShPoint - NewShPoint))
	end
	return string
end
function U쉴드여부(Unit,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x6647B0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6647B0 + (Unit-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
function U방어력(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x65FEC8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FEC8 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U방어구(Unit,OldArmor,NewArmor) -- (ID, OldCode, NewCode)
	local d, e
	if OldArmor == SetTo then
		e = 0x6635D0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewArmor)
	else
		if OldArmor < NewArmor then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6635D0 + (Unit-0) * 1, d, math.abs(OldArmor - NewArmor))
	end
	return string
end
function U미네랄(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663888 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663888 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U가스(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x65FD00 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FD00 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U생산속도(Unit,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x660428 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660428 + (Unit-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
function U지상무기(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6636B8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6636B8 + (Unit-0) * 1, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
function U공중무기(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6616E0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6616E0 + (Unit-0) * 1, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
function U인구소모량(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x663CE8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663CE8 + (Unit-0) * 1, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function U인구공급량(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x6646C8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6646C8 + (Unit-0) * 1, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function U그룹플래그(Unit,OldGroup,NewGroup) -- (ID, OldCode, NewCode)
	local d, e
	if OldGroup == SetTo then
		e = 0x6637A0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewGroup)
	else
		if OldGroup < NewGroup then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6637A0 + (Unit-0) * 1, d, math.abs(OldGroup - NewGroup))
	end
	return string
end
function U수송소모량(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
	local d, e
	if OldLimit255 == SetTo then
		e = 0x664410 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewLimit255)
	else
		if OldLimit255 < NewLimit255 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664410 + (Unit-0) * 1, d, math.abs(OldLimit255 - NewLimit255))
	end
	return string
end
function U수송제공량(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
	local d, e
	if OldLimit255 == SetTo then
		e = 0x660988 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewLimit255)
	else
		if OldLimit255 < NewLimit255 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660988 + (Unit-0) * 1, d, math.abs(OldLimit255 - NewLimit255))
	end
	return string
end
function U생산시점수(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663408 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663408 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U파괴시점수(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663EB8 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663EB8 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U방어타입(Unit,OldArmorType,NewArmorType) -- (ID, OldCode, NewCode)
	local d, e
	if OldArmorType == SetTo then
		e = 0x662180 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewArmorType)
	else
		if OldArmorType < NewArmorType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662180 + (Unit-0) * 1, d, math.abs(OldArmorType - NewArmorType))
	end
	return string
end
function U시야(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663238 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663238 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U부가사거리(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x662DB8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662DB8 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U스페셜어빌리티(Unit,OldSpecial,NewSpecial) -- (ID, OldCode, NewCode)
	local d, e
	if OldSpecial == SetTo then
		e = 0x664080 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewSpecial)
	else
		if OldSpecial < NewSpecial then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664080 + (Unit-0) * 4, d, math.abs(OldSpecial - NewSpecial))
	end
	return string
end
function U부가유닛(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x6607C0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6607C0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function U생산소리(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661FC0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661FC0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Uyes소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x663C10 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663C10 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Uyes소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661440 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661440 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Uwhat소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x65FFB0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FFB0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Uwhat소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x662BF0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662BF0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Upissed소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x663B38 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663B38 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function Upissed소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661EE8 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661EE8 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
function U외형(Unit,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingy == SetTo then
		e = 0x6644F8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewFlingy)
	else
		if OldFlingy < NewFlingy then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6644F8 + (Unit-0) * 1, d, math.abs(OldFlingy - NewFlingy))
	end
	return string
end
function U생산모습(Unit,OldImage,NewImage) -- (ID, OldCode, NewCode)
	local d, e
	if OldImage == SetTo then
		e = 0x6610B0 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewImage)
	else
		if OldImage < NewImage then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6610B0 + (Unit-0) * 4, d, math.abs(OldImage - NewImage))
	end
	return string
end
function U포트레이트(Unit,OldPortrait,NewPortrait) -- (ID, OldCode, NewCode)
	local d, e
	if OldPortrait == SetTo then
		e = 0x662F88 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPortrait)
	else
		if OldPortrait < NewPortrait then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662F88 + (Unit-0) * 2, d, math.abs(OldPortrait - NewPortrait))
	end
	return string
end
function U높이(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663150 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663150 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U생성방향(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6605F0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6605F0 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U에디터어빌리티(Unit,OldEditer,NewEditer) -- (ID, OldCode, NewCode)
	local d, e
	if OldEditer == SetTo then
		e = 0x661518 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewEditer)
	else
		if OldEditer < NewEditer then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661518 + (Unit-0) * 2, d, math.abs(OldEditer - NewEditer))
	end
	return string
end
function U계급(Unit,OldRank,NewRank) -- (ID, OldCode, NewCode)
	local d, e
	if OldRank == SetTo then
		e = 0x663DD0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewRank)
	else
		if OldRank < NewRank then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663DD0 + (Unit-0) * 1, d, math.abs(OldRank - NewRank))
	end
	return string
end
function U컴퓨터기본AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x662EA0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662EA0 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
function U사람기본AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x662268 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662268 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
function U평상시AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x664898 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664898 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
function U공격AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x663320 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663320 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
function U공격과이동AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x663A50 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663A50 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
function U우클릭명령(Unit,OldRightClick,NewRightClick) -- (ID, OldCode, NewCode)
	local d, e
	if OldRightClick == SetTo then
		e = 0x662098 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewRightClick)
	else
		if OldRightClick < NewRightClick then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662098 + (Unit-0) * 1, d, math.abs(OldRightClick - NewRightClick))
	end
	return string
end
function U내부인공지능(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x660178 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660178 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function U인페스티드유닛(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x664980 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664980 + (Unit-106) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W공격력(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656EB0 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656EB0 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W공격력증가량(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657678 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657678 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W공격횟수(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6564E0 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6564E0 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W공격속도(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656FB8 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656FB8 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W이름(Weapon,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6572E0 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6572E0 + (Weapon-0) * 2, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
function W방식(Weapon,OldMisslieType,NewMisslieType) -- (ID, OldCode, NewCode)
	local d, e
	if OldMisslieType == SetTo then
		e = 0x656670 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewMisslieType)
	else
		if OldMisslieType < NewMisslieType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656670 + (Weapon-0) * 1, d, math.abs(OldMisslieType - NewMisslieType))
	end
	return string
end
function W외형(Weapon,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingy == SetTo then
		e = 0x656CA8 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewFlingy)
	else
		if OldFlingy < NewFlingy then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656CA8 + (Weapon-0) * 4, d, math.abs(OldFlingy - NewFlingy))
	end
	return string
end
function W아이콘(Weapon,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x656780 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656780 + (Weapon-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
function W공격각도(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656990 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656990 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W투사체지속시간(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657040 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657040 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W발사회전값(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657888 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657888 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W공격대상(Weapon,OldAttackTarget,NewAttackTarget) -- (ID, OldCode, NewCode)
	local d, e
	if OldAttackTarget == SetTo then
		e = 0x657998 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewAttackTarget)
	else
		if OldAttackTarget < NewAttackTarget then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657998 + (Weapon-0) * 2, d, math.abs(OldAttackTarget - NewAttackTarget))
	end
	return string
end
function W최소사거리(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656A18 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656A18 + (Weapon-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W최대사거리(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657470 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657470 + (Weapon-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W스플래쉬안쪽(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656888 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656888 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W스플래쉬중간(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6570C8 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6570C8 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W스플래쉬외곽(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657780 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657780 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function W폭발형(Weapon,OldExplosionType,NewExplosionType) -- (ID, OldCode, NewCode)
	local d, e
	if OldExplosionType == SetTo then
		e = 0x6566F8 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewExplosionType)
	else
		if OldExplosionType < NewExplosionType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6566F8 + (Weapon-0) * 1, d, math.abs(OldExplosionType - NewExplosionType))
	end
	return string
end
function W데미지형식(Weapon,OldAttackType,NewAttackType) -- (ID, OldCode, NewCode)
	local d, e
	if OldAttackType == SetTo then
		e = 0x657258 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewAttackType)
	else
		if OldAttackType < NewAttackType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657258 + (Weapon-0) * 1, d, math.abs(OldAttackType - NewAttackType))
	end
	return string
end
function W업그레이드(Weapon,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
	local d, e
	if OldUpgrade == SetTo then
		e = 0x6571D0 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewUpgrade)
	else
		if OldUpgrade < NewUpgrade then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6571D0 + (Weapon-0) * 1, d, math.abs(OldUpgrade - NewUpgrade))
	end
	return string
end
function W타겟에러메세지(Weapon,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x656568 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656568 + (Weapon-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
function WX좌표(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657910 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657910 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function WY좌표(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656C20 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656C20 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function F최고속도(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9EF8 + Flingy*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9EF8 + (Flingy-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function F가속도(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9C78 + Flingy*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9C78 + (Flingy-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function F멈추는거리(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9930 + Flingy*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9930 + (Flingy-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function F회전반경(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9E20 + Flingy*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9E20 + (Flingy-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function F이동제어(Flingy,OldFlingyType,NewFlingyType) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingyType == SetTo then
		e = 0x6C9858 + Flingy*1
		string = SetMemory(e - e%4, SetTo, NewFlingyType)
	else
		if OldFlingyType < NewFlingyType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9858 + (Flingy-0) * 1, d, math.abs(OldFlingyType - NewFlingyType))
	end
	return string
end
function F스프라이트(Flingy,OldSprite,NewSprite) -- (ID, OldCode, NewCode)
	local d, e
	if OldSprite == SetTo then
		e = 0x6CA318 + Flingy*2
		string = SetMemory(e - e%4, SetTo, NewSprite)
	else
		if OldSprite < NewSprite then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6CA318 + (Flingy-0) * 2, d, math.abs(OldSprite - NewSprite))
	end
	return string
end
function S보여짐여부(Sprite,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x665C48 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665C48 + (Sprite-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
function S선택원크기(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665AC0 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665AC0 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function S체력바크기(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665E50 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665E50 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function S선택원위치(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665FD8 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665FD8 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function S이미지(Sprite,OldImage,NewImage) -- (ID, OldCode, NewCode)
	local d, e
	if OldImage == SetTo then
		e = 0x666160 + Sprite*2
		string = SetMemory(e - e%4, SetTo, NewImage)
	else
		if OldImage < NewImage then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666160 + (Sprite-0) * 2, d, math.abs(OldImage - NewImage))
	end
	return string
end
function IGRP파일(Image,OldPointer,NewPointer) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointer == SetTo then
		e = 0x668AA0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewPointer)
	else
		if OldPointer < NewPointer then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x668AA0 + (Image-0) * 4, d, math.abs(OldPointer - NewPointer))
	end
	return string
end
function I스크립트(Image,OldScript,NewScript) -- (ID, OldCode, NewCode)
	local d, e
	if OldScript == SetTo then
		e = 0x66EC48 + Image*4
		string = SetMemory(e - e%4, SetTo, NewScript)
	else
		if OldScript < NewScript then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66EC48 + (Image-0) * 4, d, math.abs(OldScript - NewScript))
	end
	return string
end
function I회전(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x66E860 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66E860 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
function I클릭(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x66C150 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C150 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
function I클로킹(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x667718 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667718 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
function I리맵핑색상(Image,OldColor,NewColor) -- (ID, OldCode, NewCode)
	local d, e
	if OldColor == SetTo then
		e = 0x669A40 + Image*1
		string = SetMemory(e - e%4, SetTo, NewColor)
	else
		if OldColor < NewColor then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669A40 + (Image-0) * 1, d, math.abs(OldColor - NewColor))
	end
	return string
end
function I리맵핑기능(Image,OldFuction,NewFuction) -- (ID, OldCode, NewCode)
	local d, e
	if OldFuction == SetTo then
		e = 0x669E28 + Image*1
		string = SetMemory(e - e%4, SetTo, NewFuction)
	else
		if OldFuction < NewFuction then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669E28 + (Image-0) * 1, d, math.abs(OldFuction - NewFuction))
	end
	return string
end
function I공격오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66B1B0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66B1B0 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function I데미지오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66A210 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66A210 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function I특수오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x667B00 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667B00 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function I착지시연기(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x666778 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666778 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function I띄울때연기(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66D8C0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66D8C0 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function I쉴드그래픽(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66C538 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C538 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
function UP아이콘(Upgrade,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x655AC0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655AC0 + (Upgrade-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
function UP이름(Upgrade,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x655A40 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655A40 + (Upgrade-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
function UP미네랄(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x655740 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655740 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function UP가스(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x655840 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655840 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function UP시간(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x655B80 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655B80 + (Upgrade-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
function UP추가미네랄(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6559C0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6559C0 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function UP추가가스(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6557C0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6557C0 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function UP추가시간(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x655940 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655940 + (Upgrade-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
function UP최대레벨(Upgrade,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
	local d, e
	if OldUpgrade == SetTo then
		e = 0x655700 + Upgrade*1
		string = SetMemory(e - e%4, SetTo, NewUpgrade)
	else
		if OldUpgrade < NewUpgrade then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655700 + (Upgrade-0) * 1, d, math.abs(OldUpgrade - NewUpgrade))
	end
	return string
end
function UP종족(Upgrade,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
	local d, e
	if OldTribe == SetTo then
		e = 0x655BFC + Upgrade*1
		string = SetMemory(e - e%4, SetTo, NewTribe)
	else
		if OldTribe < NewTribe then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655BFC + (Upgrade-0) * 1, d, math.abs(OldTribe - NewTribe))
	end
	return string
end
function T아이콘(Tech,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x656430 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656430 + (Tech-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
function T이름(Tech,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x6562A0 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6562A0 + (Tech-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
function T미네랄(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x656248 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656248 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
function T가스(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x6561F0 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6561F0 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
function T시간(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x6563D8 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6563D8 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
function T마나량(Tech,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656380 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656380 + (Tech-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
function T종족(Tech,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
	local d, e
	if OldTribe == SetTo then
		e = 0x656488 + Tech*1
		string = SetMemory(e - e%4, SetTo, NewTribe)
	else
		if OldTribe < NewTribe then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656488 + (Tech-0) * 1, d, math.abs(OldTribe - NewTribe))
	end
	return string
end
function P저그사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582144 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582144 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P저그사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582174 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582174 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P저그최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5821A4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821A4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P테란사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5821D4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821D4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P테란사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582204 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582204 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P테란최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582234 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582234 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P프로토스사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582264 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582264 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P프로토스사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582294 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582294 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
function P프로토스최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5822C4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5822C4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
