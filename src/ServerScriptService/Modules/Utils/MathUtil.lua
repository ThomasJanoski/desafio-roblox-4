local MathUtil = {}

function MathUtil:Sum(...)
    local FinalNumber = 0
    for _, Number in {...} do
        FinalNumber += Number
    end

    return FinalNumber
end

function MathUtil:Multiply(...)
    local FinalNumber = 0
    for _, Number in {...} do
        FinalNumber *= Number
    end

    return FinalNumber
end

function MathUtil:Minus(...)
    local FinalNumber = 0
    for _, Number in {...} do
        FinalNumber -= Number
    end

    return FinalNumber
end

function MathUtil:Divide(A: number, B: number)
    return A / B
end

function MathUtil:Square(A: number, B: number)
    return math.sqrt(A, B)
end

function MathUtil:Mod(A: number, B: number)
    return A % B
end

return MathUtil