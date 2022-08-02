--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
sendPrivateMessage = function(____, tableIn)
    local player = game.get_player(tableIn.player_index)
    local color = rgbGen(nil)
    player.print(((("Aye ! this message is for " .. player.name) .. " and ") .. player.name) .. " alone !", color)
    game.print("someone here received a secret message :D")
end
commands.add_command(
    "pm",
    "sends a private message",
    function(data) return sendPrivateMessage(nil, data) end
)
rgbGen = function()
    local r = math.floor(math.random() * 256)
    local g = math.floor(math.random() * 256)
    local b = math.floor(math.random() * 256)
    return {r = r, g = g, b = b}
end
