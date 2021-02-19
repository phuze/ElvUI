local E, L, V, P, G = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DB = E:GetModule('DataBars')

local _G = _G
local format = format
local IsPlayerAtEffectiveMaxLevel = IsPlayerAtEffectiveMaxLevel
local C_Reputation_GetFactionParagonInfo = C_Reputation.GetFactionParagonInfo
local C_Reputation_IsFactionParagon = C_Reputation.IsFactionParagon
local GetFriendshipReputation = GetFriendshipReputation
local GetWatchedFactionInfo = GetWatchedFactionInfo
local ToggleCharacter = ToggleCharacter
local REPUTATION = REPUTATION
local STANDING = STANDING

function DB:ReputationBar_Update()
	local bar = DB.StatusBars.Reputation
	DB:SetVisibility(bar)

	if not bar.db.enable or bar:ShouldHide() then return end

	local name, reaction, minValue, maxValue, curValue, factionID = GetWatchedFactionInfo()
	local displayString, textFormat = '', DB.db.reputation.textFormat
	local isCapped, isFriend, friendText, standingLabel, hasReward
	local friendshipID, _, _, _, _, _, standingText, _, nextThreshold = GetFriendshipReputation(factionID)

	if friendshipID then
		isFriend, reaction, friendText = true, 5, standingText
		if (not nextThreshold) then
			minValue, maxValue, curValue = 0, 1, 1
		end
	elseif C_Reputation_IsFactionParagon(factionID) then
		local currentValue, threshold, _, hasRewardPending = C_Reputation_GetFactionParagonInfo(factionID)
		hasReward = hasRewardPending
		if currentValue and threshold then
			standingLabel = L["Paragon"]
			minValue, maxValue, curValue = 0, threshold, currentValue % threshold
			reaction = 9
		end

		if bar:GetOrientation() == 'VERTICAL' then
			bar.Reward:SetPoint('CENTER', bar, 'TOP')
		else
			bar.Reward:SetPoint('CENTER', bar, 'LEFT')
		end
	end

	local color = DB.db.colors.useCustomFactionColors and DB.db.colors.factionColors[reaction] or _G.FACTION_BAR_COLORS[reaction]
	if reaction == 9 then color = DB.db.colors.factionColors[reaction] end

	maxValue = maxValue - minValue
	curValue = curValue - minValue

	if (curValue == maxValue) then
		curValue, maxValue, isCapped = 1, 1, true
	end

	bar:SetMinMaxValues(minValue, maxValue)
	bar:SetValue(curValue)
	bar:SetStatusBarColor(color.r, color.g, color.b)
	bar.Reward:SetShown(hasReward)

	standingLabel = standingLabel or _G['FACTION_STANDING_LABEL'..reaction]

	--Prevent a division by zero
	local maxMinDiff = maxValue - minValue
	if maxMinDiff == 0 then
		maxMinDiff = 1
	end

	if isCapped and textFormat ~= 'NONE' then
		-- show only name and standing on exalted
		displayString = format('%s: [%s]', name, isFriend and friendText or standingLabel)
	else
		if textFormat == 'PERCENT' then
			displayString = format('%s: %d%% [%s]', name, ((curValue - minValue) / (maxMinDiff) * 100), isFriend and friendText or standingLabel)
		elseif textFormat == 'CURMAX' then
			displayString = format('%s: %s - %s [%s]', name, E:ShortValue(curValue - minValue), E:ShortValue(maxValue - minValue), isFriend and friendText or standingLabel)
		elseif textFormat == 'CURPERC' then
			displayString = format('%s: %s - %d%% [%s]', name, E:ShortValue(curValue - minValue), ((curValue - minValue) / (maxMinDiff) * 100), isFriend and friendText or standingLabel)
		elseif textFormat == 'CUR' then
			displayString = format('%s: %s [%s]', name, E:ShortValue(curValue - minValue), isFriend and friendText or standingLabel)
		elseif textFormat == 'REM' then
			displayString = format('%s: %s [%s]', name, E:ShortValue((maxValue - minValue) - (curValue - minValue)), isFriend and friendText or standingLabel)
		elseif textFormat == 'CURREM' then
			displayString = format('%s: %s - %s [%s]', name, E:ShortValue(curValue - minValue), E:ShortValue((maxValue - minValue) - (curValue - minValue)), isFriend and friendText or standingLabel)
		elseif textFormat == 'CURPERCREM' then
			displayString = format('%s: %s - %d%% (%s) [%s]', name, E:ShortValue(curValue - minValue), ((curValue - minValue) / (maxMinDiff) * 100), E:ShortValue((maxValue - minValue) - (curValue - minValue)), isFriend and friendText or standingLabel)
		end
	end

	bar.text:SetText(displayString)
end

function DB:ReputationBar_OnEnter()
	if self.db.mouseover then
		E:UIFrameFadeIn(self, 0.4, self:GetAlpha(), 1)
	end

	local name, reaction, minValue, maxValue, curValue, factionID = GetWatchedFactionInfo()
	local standingLabel = _G['FACTION_STANDING_LABEL'..reaction]
	local isParagon = C_Reputation_IsFactionParagon(factionID)

	if factionID and isParagon then
		local currentValue, threshold = C_Reputation_GetFactionParagonInfo(factionID)
		if currentValue and threshold then
			minValue, maxValue = 0, threshold
			curValue = currentValue % threshold
			standingLabel = L['Paragon']
		end
	end

	if name and not _G.GameTooltip:IsForbidden() then
		_G.GameTooltip:ClearLines()
		_G.GameTooltip:SetOwner(self, 'ANCHOR_CURSOR')
		_G.GameTooltip:AddLine(name)
		_G.GameTooltip:AddLine(' ')

		local friendID, friendTextLevel, _
		if factionID then friendID, _, _, _, _, _, friendTextLevel = GetFriendshipReputation(factionID) end

		_G.GameTooltip:AddDoubleLine(STANDING..':', (friendID and friendTextLevel) or standingLabel, 1, 1, 1)

		if reaction ~= _G.MAX_REPUTATION_REACTION or isParagon then
			_G.GameTooltip:AddDoubleLine(REPUTATION..':', format('%d / %d (%d%%)', curValue - minValue, maxValue - minValue, (curValue - minValue) / ((maxValue - minValue == 0) and maxValue or (maxValue - minValue)) * 100), 1, 1, 1)
		end

		_G.GameTooltip:Show()
	end
end

function DB:ReputationBar_OnClick()
	ToggleCharacter('ReputationFrame')
end

function DB:ReputationBar_Toggle()
	local bar = DB.StatusBars.Reputation
	bar.db = DB.db.reputation

	if bar.db.enable then
		E:EnableMover(bar.holder.mover:GetName())

		DB:RegisterEvent('UPDATE_FACTION', 'ReputationBar_Update')
		DB:RegisterEvent('COMBAT_TEXT_UPDATE', 'ReputationBar_Update')
		DB:RegisterEvent('QUEST_FINISHED', 'ReputationBar_Update')

		DB:ReputationBar_Update()
	else
		E:DisableMover(bar.holder.mover:GetName())

		DB:UnregisterEvent('UPDATE_FACTION')
		DB:UnregisterEvent('COMBAT_TEXT_UPDATE')
		DB:UnregisterEvent('QUEST_FINISHED')
	end
end

function DB:ReputationBar()
	local Reputation = DB:CreateBar('ElvUI_ReputationBar', 'Reputation', DB.ReputationBar_Update, DB.ReputationBar_OnEnter, DB.ReputationBar_OnClick, {'TOPRIGHT', E.UIParent, 'TOPRIGHT', -3, -264})
	DB:CreateBarBubbles(Reputation)

	Reputation.Reward = Reputation:CreateTexture()
	Reputation.Reward:SetAtlas('ParagonReputation_Bag')
	Reputation.Reward:Size(20)

	Reputation.ShouldHide = function()
		return (DB.db.reputation.hideBelowMaxLevel and not IsPlayerAtEffectiveMaxLevel()) or not GetWatchedFactionInfo()
	end

	E:CreateMover(Reputation.holder, 'ReputationBarMover', L["Reputation Bar"], nil, nil, nil, nil, nil, 'databars,reputation')

	DB:ReputationBar_Toggle()
end
