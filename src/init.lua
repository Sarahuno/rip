local utils = loadstring("utils.lua")()

local meow = {}

function meow.mangnitudetest(vectorone, vectortwo)
    return utils.mangnitude(vectorone,vectortwo)
end

function meow.printtest(stringss)
    print(stringss)
    warn(stringss)
    error(stringss)
end

function meow.mathtest(int1,int2)
    return (int1 + int2)
end

return meow
