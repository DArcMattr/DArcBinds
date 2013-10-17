--------------------
-- Binding Labels --
--------------------

_G["BINDING_HEADER_DARC_H_TARGETING"]              = "Additional Targeting Functions"
_G["BINDING_NAME_CLICK DArc_Focus:LeftButton"]     = "Focus mouseover, target, or clearfocus"
_G["BINDING_NAME_CLICK DArc_SwapFocus:LeftButton"] = "Swap Focus with Target"
_G["BINDING_NAME_CLICK DArc_Assist:LeftButton"]    = "Assist Focus"
_G["BINDING_NAME_CLICK DArc_PetAttack:LeftButton"] = "Pet attack mouseover or target"
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
macroFocus:SetAttribute("macrotext1", [[/target [@focus]
/focus [@lasttarget]
]])

local macroAssist = CreateFrame("Button", "DArc_Assist", UIParent, "SecureActionButtonTemplate")
macroAssist:SetAttribute("type1", "macro")
macroAssist:SetAttribute("macrotext1", "/assist focus")

-- @link http://www.arenajunkies.com/topic/164251-warlock-mouseoverif-exists-or-target-petattack/
local macroPetAttack = CreateFrame("Button", "DArc_PetAttack", UIParent, "SecureActionButtonTemplate")
macroPetAttack:SetAttribute("type1", "macro")
macroPetAttack:SetAttribute("macrotext1", "/petattack [@mouseover,exists,nodead][nodead]")
