local utils = require("utils.lua")

local ESPModule = {}

function ESPModule.Highlight(player)
    local color = utils.GetRandomColor()
    print("Highlighting player:", player.Name, "with color:", color)
end

return ESPModule
