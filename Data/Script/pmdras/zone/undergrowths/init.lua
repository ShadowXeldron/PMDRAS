--[[
    init.lua
    Created: 03/10/2024 16:15:18
    Description: Autogenerated script file for the map undergrowths.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local undergrowths = {}

-------------------------------
-- Zone Callbacks
-------------------------------
---undergrowths.Init(zone)
--Engine callback function
function undergrowths.Init(zone)


end

---undergrowths.EnterSegment(zone, rescuing, segmentID, mapID)
--Engine callback function
function undergrowths.EnterSegment(zone, rescuing, segmentID, mapID)


end

---undergrowths.ExitSegment(zone, result, rescue, segmentID, mapID)
--Engine callback function
function undergrowths.ExitSegment(zone, result, rescue, segmentID, mapID)
    --DEBUG.EnableDbgCoro() --Enable debugging this coroutine
    --PrintInfo("=>> ExitSegment_secret_gold_gulch result "..tostring(result).." segment "..tostring(segmentID))
  
    --first check for rescue flag; if we're in rescue mode then take a different path
    local exited = COMMON.ExitDungeonMissionCheck(result, rescue, zone.ID, segmentID)
    if exited == true then
        --do nothing
    elseif result ~= RogueEssence.Data.GameProgress.ResultType.Cleared then
        COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
    else
        if segmentID == 0 then
            COMMON.EndDungeonDay(result, 'guildmaster_island', -1, 3, 0)
            COMMON.UnlockWithFanfare('cobblestone_cave', true)
        else
            PrintInfo("No exit procedure found!")
            COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
        end
    end
end

---undergrowths.Rescued(zone, name, mail)
--Engine callback function
function undergrowths.Rescued(zone, name, mail)


end

return undergrowths
