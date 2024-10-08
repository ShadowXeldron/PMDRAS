--[[
    init.lua
    Created: 07/15/2024 14:47:53
    Description: Autogenerated script file for the map arena_lobby.
]]--
-- Commonly included lua functions and data
require 'origin.common'

-- Package name
local arena_lobby = {}

-------------------------------
-- Map Callbacks
-------------------------------
---arena_lobby.Init(map)
--Engine callback function
function arena_lobby.Init(map)


end

---arena_lobby.Enter(map)
--Engine callback function
function arena_lobby.Enter(map)

  GAME:FadeIn(20)

end

---arena_lobby.Exit(map)
--Engine callback function
function arena_lobby.Exit(map)


end

---arena_lobby.Update(map)
--Engine callback function
function arena_lobby.Update(map)


end

---arena_lobby.GameSave(map)
--Engine callback function
function arena_lobby.GameSave(map)


end

---arena_lobby.GameLoad(map)
--Engine callback function
function arena_lobby.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------

-- NPCs 'cause there are a lot of them
function arena_lobby.Talking_Tinkaton_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Tinkaton_Talk']))
end

function arena_lobby.Talking_Gallade_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Gallade_Talk']))
end

function arena_lobby.Talking_Mimikyu_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Mimikyu_Talk']))
end

function arena_lobby.Talking_Hitmonlee_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Hitmonlee_Talk']))
end

function arena_lobby.Talking_Hitmonchan_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Hitmonchan_Talk']))
end

function arena_lobby.Talking_Hitmontop_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Hitmontop_Talk']))
end

function arena_lobby.Talking_Slugma_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Slugma_Talk']))
end

function arena_lobby.Talking_Milotic_Shiny_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Shiny_Milotic_Talk']))
end

function arena_lobby.Talking_Milotic_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Milotic_Talk']))
end

function arena_lobby.Talking_Toxapex_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Toxapex_Talk']))
end

function arena_lobby.Talking_Golduck_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Golduck_Talk']))
end

function arena_lobby.Talking_Tentacruel_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Tentacruel_Talk']))
end

function arena_lobby.Talking_Minccino_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Minncino_Talk']))
end

function arena_lobby.Talking_Tarountula_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Tarountula_Talk']))
end

function arena_lobby.Talking_Swirlix_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Swirlix_Talk']))
end

function arena_lobby.Talking_Tandemaus_Action(chara, activator)
    GROUND:CharTurnToChar(chara,CH('PLAYER'))
    UI:SetSpeaker(chara)
    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Tandemaus_Talk']))
end

-- Grimmsnarl stuff here


return arena_lobby

