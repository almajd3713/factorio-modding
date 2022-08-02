
- Mod Structure
```md
Mod Folder
- info.json (contains info about the mod)
- thumbnail.png (thumbnail, 144x144 px)
- changelog.txt (version history, for use in mod browser)
- setting.lua -- setting-updates.lua -- setting-final-fixes.json (adds configuration settings to mod)
- data.lua -- data-updates.lua -- data-final-fixes.json (adds the actual prototypes)
- control.lua (actual logic of mod)

= Locale (stores translation of mod)
= Scenarios
= Campaigns
= Tutorials
= Migrations (Handles prototype change between versions)
```

- Useful objects (or tables or whatever)
```lua
game -- [OBJECT]: the game function, contains most of the stuff that you want
  .print("message") -- prints a global message to all players
  .get_player(table.player_index) -- finds the player with the given string, here used for a table passed from a command

player -- [OBJECT]: a certain player object, get_player() can give it
  .print("message") -- sends a private message
  
```

- Adding Custom Commands
```lua
commands -- [OBJECT]: the commands object
  .add_command("name", "description to help", function) -- adds a usable command