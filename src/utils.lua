local utils = {}

function utils.GetRandomColor()
    local colors = {"Red", "Green", "Blue", "Yellow", "Purple"}
    return colors[math.random(1, #colors)]
end

return utils
