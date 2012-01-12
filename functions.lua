-- Copyright (c) 2011 David Arceneaux
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

local macroMarker1 = CreateFrame("Button", "DArc_Marker1", UIParent, "SecureActionButtonTemplate")
macroMarker1:SetAttribute("type1", "macro")
macroMarker1:SetAttribute("macrotext1", [[/clearworldmarker 1
/worldmarker 1
]])

local macroMarker2 = CreateFrame("Button", "DArc_Marker2", UIParent, "SecureActionButtonTemplate")
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

local macroMarkerClear = CreateFrame("Button", "DArc_MarkerClear", UIParent, "SecureActionButtonTemplate")
macroMarkerClear:SetAttribute("type1", "macro")
macroMarkerClear:SetAttribute("macrotext1", "/clearworldmarker all")

--------------------
-- Binding Labels --
--------------------

_G["BINDING_HEADER_DARC_RAID_TARGETING"]        = "Additional Raid Targeting on Mouseover or Target"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_STAR"]     = "Assign Star"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_CIRCLE"]   = "Assign Circle"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_DIAMOND"]  = "Assign Diamond"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_TRIANGLE"] = "Assign Triangle"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_MOON"]     = "Assign Moon"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_SQUARE"]   = "Assign Square"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_CROSS"]    = "Assign Cross"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_SKULL"]    = "Assign Skull"
_G["BINDING_NAME_DARC_MARK_MOUSEOVER_CLEAR"]    = "Clear Raid Icon"

_G["BINDING_HEADER_DARC_MARKERS"]                    = "World Markers"
_G["BINDING_NAME_CLICK DArc_Marker1:LeftButton"]     = "Place Blue Marker"
_G["BINDING_NAME_CLICK DArc_Marker2:LeftButton"]     = "Place Green Marker"
_G["BINDING_NAME_CLICK DArc_Marker3:LeftButton"]     = "Place Purple Marker"
_G["BINDING_NAME_CLICK DArc_Marker4:LeftButton"]     = "Place Red Marker"
_G["BINDING_NAME_CLICK DArc_Marker5:LeftButton"]     = "Place Yellow Marker"
_G["BINDING_NAME_CLICK DArc_MarkerClear:LeftButton"] = "Clear All Markers"
