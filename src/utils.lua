local utils = {}

function utils.magnitude(vec1, vec2)
    local dx = vec1.x - vec2.x
    local dy = vec1.y - vec2.y
    local dz = vec1.z - vec2.z
    return math.sqrt(dx*dx + dy*dy + dz*dz)
end

function utils.factorial(n)
    if n == 0 then return 1 end
    return n * utils.factorial(n - 1)
end

function utils.capitalize(str)
    return str:gsub("^%l", string.upper)
end

function utils.is_prime(num)
    if num < 2 then return false end
    for i=2, math.floor(math.sqrt(num)) do
        if num % i == 0 then return false end
    end
    return true
end

function utils.deep_sum(tbl)
    local sum = 0
    for _, v in pairs(tbl) do
        if type(v) == "table" then
            sum = sum + utils.deep_sum(v)
        elseif type(v) == "number" then
            sum = sum + v
        end
    end
    return sum
end

return utils
