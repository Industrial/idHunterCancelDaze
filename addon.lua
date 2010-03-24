local f = CreateFrame('Frame')
f:SetScript('OnEvent', function (self, event, ...)
	local unit = ...
	if UnitAura(unit, 'Dazed') then
		if unit == 'player' then
			CancelUnitBuff('player', 'Aspect of the Pack')
			CancelUnitBuff('player', 'Aspect of the Cheetah')
		elseif unit:match('party.*') or unit:match('raid.*') then
			CancelUnitBuff('player', 'Aspect of the Pack')
		end
	end
end)
f:RegisterEvent('UNIT_AURA')

