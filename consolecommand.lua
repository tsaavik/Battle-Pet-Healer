-- https://rextester.com/l/lua_online_compiler
-- https://wowwiki.fandom.com/wiki/Creating_a_slash_command
-- https://www.wowhead.com/guide=5338/comprehensive-beginners-guide-for-wow-addon-coding-in-lua
-- https://www.warcraftpets.com/downloads/vanity_pet_macros/
--
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

EventFrame:SetScript("OnEvent", function(self, event, ...)
   if(event == "PLAYER_ENTERING_WORLD") then
      C_Timer.After(480, healpets)
   end
end)

local function healpets()
   ConsoleExec( "/cast Revive Battle Pets" )
   --CastSpellByName("Revive Battle Pets");
end

