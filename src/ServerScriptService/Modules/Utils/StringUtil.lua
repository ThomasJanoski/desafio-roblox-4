local StringUtil = {}

function StringUtil:ToUpperCase(String: string)
    
    return String:upper()
end

function StringUtil:ToLowerCase(String: string)
    return String:lower()
end

function StringUtil:GetLength(String: string)
    return #String
end

function StringUtil:trim(String: string)
    return table.concat(String:split(" "), "")
end

return StringUtil