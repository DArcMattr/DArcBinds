-- Copyright (c) 2018 David Arceneaux
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.

for i=0,8 do
	_G["BINDING_NAME_DARC_MARK_MOUSEOVER_"..i] = i == 0 and "Clear Raid Icon" or "Assign |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_"..i..":0|t Raid Icon"
	_G["BINDING_NAME_CLICK DArc_Marker_"..i..":LeftButton"] = i == 0 and "Clear All Markers" or "Place |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_"..i..":0|t World Marker"

	local button = CreateFrame("Button", "DArc_Marker_"..i, nil, "SecureActionButtonTemplate")
	button:SetAttribute("type", "macro")
	button:RegisterForClicks("AnyDown")

	if i == 0 then
		button:SetAttribute("macrotext", "/clearworldmarker all")
	else
		button:SetAttribute("macrotext", "/clearworldmarker "..i.."\n/worldmarker"..i)
	end
end

_G["BINDING_HEADER_DARC_RAID_TARGETING"] = "Additional Raid Targeting on Mouseover or Target"
_G["BINDING_HEADER_DARC_MARKERS"]        = "World Markers"

_G["BINDING_HEADER_DARC_H_ARCH"]     = "Archaeology"
_G["BINDING_NAME_SPELL Survey"]      = "Survey"
_G["BINDING_NAME_SPELL Archaeology"] = "Archaeology Frame"

_G["BINDING_HEADER_DARC_H_TARGETING"]              = "Additional Targeting Functions"
_G["BINDING_NAME_CLICK DArc_Focus:LeftButton"]     = "Focus Mouseover, Target, or clear focus if no target selected"
_G["BINDING_NAME_CLICK DArc_SwapFocus:LeftButton"] = "Swap Focus with Target"
_G["BINDING_NAME_CLICK DArc_Assist:LeftButton"]    = "Assist Focus"
_G["BINDING_NAME_CLICK DArc_PetAttack:LeftButton"] = "Pet attack Mouseover or Target"
_G["BINDING_NAME_SPELL Fishing"] = "Fishing cast"

_G["BINDING_HEADER_DARC_H_MOUNTING"]     = "Dismounting"
_G["BINDING_NAME_DARC_SMART_DISMOUNT"] = "Dismount/Leave Vehicle"

-- From some ArenaJunkies forum post, not able to relocate it atm
local macroFocus = CreateFrame("Button", "DArc_Focus", UIParent, "SecureActionButtonTemplate")
macroFocus:SetAttribute("type1", "macro")
macroFocus:SetAttribute("macrotext1", [[/focus [@mouseover,exists][exists]
/stopmacro [@mouseover,exists][exists]
/clearfocus ]])

local macroFocus = CreateFrame("Button", "DArc_SwapFocus", UIParent, "SecureActionButtonTemplate")
macroFocus:SetAttribute("type1", "macro")
macroFocus:SetAttribute("macrotext1", [[/target focus
/targetlasttarget
/focus
/targetlasttarget
]])

local macroAssist = CreateFrame("Button", "DArc_Assist", UIParent, "SecureActionButtonTemplate")
macroAssist:SetAttribute("type1", "macro")
macroAssist:SetAttribute("macrotext1", "/assist focus")

-- @link http://www.arenajunkies.com/topic/164251-warlock-mouseoverif-exists-or-target-petattack/
local macroPetAttack = CreateFrame("Button", "DArc_PetAttack", UIParent, "SecureActionButtonTemplate")
macroPetAttack:SetAttribute("type1", "macro")
macroPetAttack:SetAttribute("macrotext1", "/petattack [@mouseover,exists,nodead][nodead]")
