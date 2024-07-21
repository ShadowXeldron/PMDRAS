--[[
    init.lua
    Created: 07/14/2024 18:16:01
    Description: Autogenerated script file for the map desert_of_departure.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local desert_of_departure = {}

-------------------------------
-- Zone Callbacks
-------------------------------
---desert_of_departure.Init(zone)
--Engine callback function
function desert_of_departure.Init(zone)


end

---desert_of_departure.EnterSegment(zone, rescuing, segmentID, mapID)
--Engine callback function
function desert_of_departure.EnterSegment(zone, rescuing, segmentID, mapID)


end

---desert_of_departure.ExitSegment(zone, result, rescue, segmentID, mapID)
--Engine callback function
function desert_of_departure.ExitSegment(zone, result, rescue, segmentID, mapID)
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
            COMMON.EndDungeonDay(result, 'pmdras_overworld', -1, 1, 0)
            COMMON.UnlockWithFanfare('undergrowths', true)
        else
            PrintInfo("No exit procedure found!")
            COMMON.EndDungeonDay(result, SV.checkpoint.Zone, SV.checkpoint.Segment, SV.checkpoint.Map, SV.checkpoint.Entry)
        end
    end
end

---desert_of_departure.Rescued(zone, name, mail)
--Engine callback function
function desert_of_departure.Rescued(zone, name, mail)


end

return desert_of_departure

