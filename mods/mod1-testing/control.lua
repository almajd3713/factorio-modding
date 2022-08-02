--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
printDamage = function(____, ____table)
    local player = game.get_player(____table.player_index)
    local entity = ____table.created_entity
    player.add_alert(entity, defines.alert_type.entity_destroyed)
end
filters = {{filter = "type", type = "container"}}
script.on_event(
    defines.events.on_built_entity,
    function(data) return printDamage(nil, data) end,
    filters
)
