local modules = imp("*")

local rip = {}

function rip.magnitudeTest(vec1, vec2)
    return modules.utils.magnitude(vec1, vec2)
end

function rip.factorialTest(n)
    return modules.utils.factorial(n)
end

function rip.capitalizeTest(str)
    return modules.utils.capitalize(str)
end

function rip.isPrimeTest(n)
    return modules.utils.is_prime(n)
end

function rip.deepSumTest(tbl)
    return modules.utils.deep_sum(tbl)
end

function rip.closureMaker(base)
    return function(x)
        return base + x
    end
end

function rip.fibonacci(n)
    if n <= 1 then return n end
    return rip.fibonacci(n-1) + rip.fibonacci(n-2)
end

function rip.filterPrimes(tbl)
    local primes = {}
    for _, v in ipairs(tbl) do
        if type(v) == "number" and utils.is_prime(v) then
            table.insert(primes, v)
        end
    end
    return primes
end

return rip
