if select(2, UnitClass('player')) ~= 'HUNTER' then return end

local f = CreateFrame('Frame')
f:SetScript('OnEvent', function (self, event, unit)
	if
		unit == 'player' or
		unit:match('party.*') or
		unit:match('raid.*')
	then
		if UnitDebuff(unit, 'Dazed') then
			CancelUnitBuff('player', 'Aspect of the Pack')
			CancelUnitBuff('player', 'Aspect of the Cheetah')
		end
	end
end)
f:RegisterEvent('UNIT_AURA')

