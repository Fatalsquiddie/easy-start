--
--  control.lua
--  easy-start
--
--  Created by squiddie for squiddie Jan/2026
--

--- Insert bonus items into the given player's inventory.
local function insert_bonus_items(player)
  -- abort if player doesn't have a physical body (example: sandbox mode)
  local character = player.character or player.cutscene_character
  if not character then
    return
  end

  -- insert bonus items into player's inventory
  character.insert { name = "pamk3-pamk3", count = 1 }
  character.insert { name = "personal-roboport-mk2-equipment", count = 1 }
  character.insert { name = "battery-mk3-equipment", count = 1 }
  character.insert { name = "fusion-reactor-equipment", count = 1 }
  character.insert { name = "energy-shield-mk2-equipment", count = 1 }
  character.insert { name = "exoskeleton-equipment", count = 2 }
  character.insert { name = "personal-laser-defense-equipment", count = 1 }
  character.insert { name = "construction-robot", count = 50 }
  character.insert { name = "solar-panel-equipment", count = 50 }

  -- insert optional bonus items if enabled in the settings
  if settings.startup["easy-start-cliff-explosives"].value then
    character.insert { name = "cliff-explosives", count = 40 }
  end
  if settings.startup["easy-start-landfill"].value then
    character.insert { name = "landfill", count = 200 }
  end
  if settings.startup["easy-start-car"].value then
    character.insert { name = "car", count = 1 }
  end
end

-- Insert items on all players who were present when the game started
script.on_init(function(event)
  for _, player in pairs(game.players) do
    insert_bonus_items(player)
  end
end)

-- Insert items on all players who join the game after it started
script.on_event(defines.events.on_player_created, function(event)
  local player = game.get_player(event.player_index)
  insert_bonus_items(player)
end)
