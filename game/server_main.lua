
-- Callbacks for events

game.playerJoinCallbacks = {}

--Callback must take in "player" userdata
function game.onPlayerJoin(callback)
    table.insert(game.playerJoinCallbacks, callback)
end

local function spawnPlayer(player)
    local cs = game.world.CHUNK_SIZE
    local ws = game.world.WORLD_SIZE
    
    local x = (ws * cs) / 2
    local z = x

    
end


--Run callback functions
function game.runPlayerJoinCallback(player)
    for _, callback in ipairs(game.playerJoinCallbacks) 
    do
        callback(player)
    end
end

game.onPlayerJoin(spawnPlayer)


dofile("game/blocks.lua")