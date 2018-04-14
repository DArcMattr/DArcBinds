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

------------------------
-- Secure Button Code --
------------------------

local macroMarker1 = CreateFrame("Button", "DArc_Marker_Square", UIParent, "SecureActionButtonTemplate")
macroMarker1:SetAttribute("type1", "macro")
macroMarker1:SetAttribute("macrotext1", [[/clearworldmarker 1
/worldmarker 1
]])

local macroMarker2 = CreateFrame("Button", "DArc_Marker_Triangle", UIParent, "SecureActionButtonTemplate")
macroMarker2:SetAttribute("type1", "macro")
macroMarker2:SetAttribute("macrotext1", [[/clearworldmarker 2
/worldmarker 2
]])

local macroMarker3 = CreateFrame("Button", "DArc_Marker3", UIParent, "SecureActionButtonTemplate")
macroMarker3:SetAttribute("type1", "macro")
macroMarker3:SetAttribute("macrotext1", [[/clearworldmarker 3
/worldmarker 3
]])

local macroMarker4 = CreateFrame("Button", "DArc_Marker4", UIParent, "SecureActionButtonTemplate")
macroMarker4:SetAttribute("type1", "macro")
macroMarker4:SetAttribute("macrotext1", [[/clearworldmarker 4
/worldmarker 4
]])

local macroMarker5 = CreateFrame("Button", "DArc_Marker5", UIParent, "SecureActionButtonTemplate")
macroMarker5:SetAttribute("type1", "macro")
macroMarker5:SetAttribute("macrotext1", [[/clearworldmarker 5
/worldmarker 5
]])

local macroMarker6 = CreateFrame("Button", "DArc_Marker6", UIParent, "SecureActionButtonTemplate")
macroMarker6:SetAttribute("type1", "macro")
macroMarker6:SetAttribute("macrotext1", [[/clearworldmarker 6
/worldmarker 5
]])

local macroMarker7 = CreateFrame("Button", "DArc_Marker7", UIParent, "SecureActionButtonTemplate")
macroMarker7:SetAttribute("type1", "macro")
macroMarker7:SetAttribute("macrotext1", [[/clearworldmarker 7
/worldmarker 7
]])

local macroMarker8 = CreateFrame("Button", "DArc_Marker8", UIParent, "SecureActionButtonTemplate")
macroMarker8:SetAttribute("type1", "macro")
macroMarker8:SetAttribute("macrotext1", [[/clearworldmarker 8
/worldmarker 8
]])

local macroMarkerClear = CreateFrame("Button", "DArc_MarkerClear", UIParent, "SecureActionButtonTemplate")
macroMarkerClear:SetAttribute("type1", "macro")
macroMarkerClear:SetAttribute("macrotext1", "/clearworldmarker all")

--------------------
-- Binding Labels --
--------------------

_G["BINDING_HEADER_DARC_RAID_TARGETING"]     = "Additional Raid Targeting on Mouseover or Target"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_1"]     = "Assign {star} Star"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_2"]     = "Assign {circle} Circle"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_3"]     = "Assign {diamond} Diamond"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_4"]     = "Assign {triangle} Triangle"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_5"]     = "Assign {moon} Moon"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_6"]     = "Assign {square} Square"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_7"]     = "Assign {cross} Cross"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_8"]     = "Assign {skull} Skull"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_CLEAR"] = "Clear Raid Icon"

_G["BINDING_HEADER_DARC_MARKERS"]                    = "World Markers"
_G["BINDING_NAME_CLICK DArc_Marker_1:LeftButton"]     = "Place {Square} Marker"
_G["BINDING_NAME_CLICK DArc_Marker_2:LeftButton"]     = "Place triangle Marker"
_G["BINDING_NAME_CLICK DArc_Marker_3:LeftButton"]     = "Place diamond Marker"
_G["BINDING_NAME_CLICK DArc_Marker_4:LeftButton"]     = "Place cross Marker"
_G["BINDING_NAME_CLICK DArc_Marker_5:LeftButton"]     = "Place star Marker"
_G["BINDING_NAME_CLICK DArc_Marker_6:LeftButton"]     = "Place circle Marker"
_G["BINDING_NAME_CLICK DArc_Marker_7:LeftButton"]     = "Place moon Marker"
_G["BINDING_NAME_CLICK DArc_Marker_8:LeftButton"]     = "Place skull Marker"
_G["BINDING_NAME_CLICK DArc_Marker_Clear:LeftButton"] = "Clear All Markers"

_G["BINDING_HEADER_DARC_H_ARCH"]     = "Archaeology"
_G["BINDING_NAME_SPELL Survey"]      = "Survey"
_G["BINDING_NAME_SPELL Archaeology"] = "Archaeology Frame"

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
