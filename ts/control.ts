


const sendPrivateMessage = (tableIn: CustomCommandData) => {
  const player = game.get_player(tableIn.player_index!) as LuaPlayer
  let color = rgbGen()
  player.print(`Aye ! this message is for ${player.name} and ${player.name} alone !`, color)
  game.print("someone here received a secret message \:D")
}

commands.add_command("pm", "sends a private message", (data) => sendPrivateMessage(data))



let rgbGen = () => {
  let r = Math.floor(Math.random() * 256)
  let g = Math.floor(Math.random() * 256)
  let b = Math.floor(Math.random() * 256)
  return {r, g, b}
}