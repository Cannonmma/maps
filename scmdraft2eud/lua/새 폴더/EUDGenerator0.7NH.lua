function SetMemory2(a,b,c)
	 string = SetMemory(a - a%4, b, c*256^(a%4))
	 return string
end


function U�̸�(Unit,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
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
function Uü��(Unit,OldHpPointX256,NewHpPointX256) -- (ID, OldCode, NewCode)
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
function U����(Unit,OldShPoint,NewShPoint) -- (ID, OldCode, NewCode)
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
function U���忩��(Unit,OldHas,NewHas) -- (ID, OldCode, NewCode)
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
function U����(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U��(Unit,OldArmor,NewArmor) -- (ID, OldCode, NewCode)
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
function U�̳׶�(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U����(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U����ӵ�(Unit,OldTime,NewTime) -- (ID, OldCode, NewCode)
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
function U���󹫱�(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
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
function U���߹���(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
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
function U�α��Ҹ�(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function U�α����޷�(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function U�׷��÷���(Unit,OldGroup,NewGroup) -- (ID, OldCode, NewCode)
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
function U���ۼҸ�(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
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
function U����������(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
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
function U���������(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U�ı�������(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U���Ÿ��(Unit,OldArmorType,NewArmorType) -- (ID, OldCode, NewCode)
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
function U�þ�(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U�ΰ���Ÿ�(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U����Ⱦ����Ƽ(Unit,OldSpecial,NewSpecial) -- (ID, OldCode, NewCode)
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
function U�ΰ�����(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function U����Ҹ�(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Uyes�Ҹ�ó��(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Uyes�Ҹ���(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Uwhat�Ҹ�ó��(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Uwhat�Ҹ���(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Upissed�Ҹ�ó��(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function Upissed�Ҹ���(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
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
function U����(Unit,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
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
function U������(Unit,OldImage,NewImage) -- (ID, OldCode, NewCode)
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
function U��Ʈ����Ʈ(Unit,OldPortrait,NewPortrait) -- (ID, OldCode, NewCode)
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
function U����(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U��������(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U�����;����Ƽ(Unit,OldEditer,NewEditer) -- (ID, OldCode, NewCode)
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
function U���(Unit,OldRank,NewRank) -- (ID, OldCode, NewCode)
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
function U��ǻ�ͱ⺻AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
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
function U����⺻AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
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
function U����AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
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
function U����AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
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
function U���ݰ��̵�AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
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
function U��Ŭ�����(Unit,OldRightClick,NewRightClick) -- (ID, OldCode, NewCode)
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
function U�����ΰ�����(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function U���佺Ƽ������(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���ݷ�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���ݷ�������(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W����Ƚ��(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���ݼӵ�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W�̸�(Weapon,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
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
function W���(Weapon,OldMisslieType,NewMisslieType) -- (ID, OldCode, NewCode)
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
function W����(Weapon,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
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
function W������(Weapon,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
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
function W���ݰ���(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W����ü���ӽð�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W�߻�ȸ����(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���ݴ��(Weapon,OldAttackTarget,NewAttackTarget) -- (ID, OldCode, NewCode)
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
function W�ּһ�Ÿ�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W�ִ��Ÿ�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���÷�������(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���÷����߰�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W���÷����ܰ�(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function W������(Weapon,OldExplosionType,NewExplosionType) -- (ID, OldCode, NewCode)
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
function W����������(Weapon,OldAttackType,NewAttackType) -- (ID, OldCode, NewCode)
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
function W���׷��̵�(Weapon,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
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
function WŸ�ٿ����޼���(Weapon,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
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
function WX��ǥ(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function WY��ǥ(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function F�ְ�ӵ�(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function F���ӵ�(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function F���ߴ°Ÿ�(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function Fȸ���ݰ�(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function F�̵�����(Flingy,OldFlingyType,NewFlingyType) -- (ID, OldCode, NewCode)
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
function F��������Ʈ(Flingy,OldSprite,NewSprite) -- (ID, OldCode, NewCode)
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
function S����������(Sprite,OldHas,NewHas) -- (ID, OldCode, NewCode)
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
function S���ÿ�ũ��(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function Sü�¹�ũ��(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function S���ÿ���ġ(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function S�̹���(Sprite,OldImage,NewImage) -- (ID, OldCode, NewCode)
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
function IGRP����(Image,OldPointer,NewPointer) -- (ID, OldCode, NewCode)
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
function I��ũ��Ʈ(Image,OldScript,NewScript) -- (ID, OldCode, NewCode)
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
function Iȸ��(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
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
function IŬ��(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
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
function IŬ��ŷ(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
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
function I�����λ���(Image,OldColor,NewColor) -- (ID, OldCode, NewCode)
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
function I�����α��(Image,OldFuction,NewFuction) -- (ID, OldCode, NewCode)
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
function I���ݿ�������(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function I��������������(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function IƯ����������(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function I�����ÿ���(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function I��ﶧ����(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function I����׷���(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
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
function UP������(Upgrade,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
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
function UP�̸�(Upgrade,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
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
function UP�̳׶�(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function UP����(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function UP�ð�(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
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
function UP�߰��̳׶�(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function UP�߰�����(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function UP�߰��ð�(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
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
function UP�ִ뷹��(Upgrade,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
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
function UP����(Upgrade,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
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
function T������(Tech,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
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
function T�̸�(Tech,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
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
function T�̳׶�(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
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
function T����(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
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
function T�ð�(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
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
function T������(Tech,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
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
function T����(Tech,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
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
function P���׻�밡���α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P���׻���α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�����ִ��α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�׶���밡���α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�׶�����α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�׶��ִ��α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�����佺��밡���α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�����佺����α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
function P�����佺�ִ��α�(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
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
