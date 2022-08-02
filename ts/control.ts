
let printDamage = (table: OnBuiltEntityEvent) => {
  const player = game.get_player(table.player_index)!
  const entity = table.created_entity

  player.add_alert(entity, defines.alert_type.entity_destroyed)
}


let filters: LuaPlayerBuiltEntityEventFilter[] = [
  {filter: "type", type: "container"}
]
script.on_event(defines.events.on_built_entity, data => printDamage(data), filters)
