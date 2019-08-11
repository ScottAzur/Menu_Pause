function AddTextEntry(key, value)
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

local id = PlayerId()
local serverID = GetPlayerServerId(PlayerId())
players = {}
  for i = 0, 32 do
      if NetworkIsPlayerActive( i ) then
          table.insert( players, i )
      end
  end
Citizen.CreateThread(function()
 AddTextEntry('FE_THDR_GTAO', '~y~START FRANCE RP ~u~|~b~ ID : ' .. GetPlayerServerId(PlayerId()) .. ' ~u~|~b~ NOM : ' ..GetPlayerName(id)..' ~u~|~r~ JOUEURS : '.. #players .. '/32')
end)
