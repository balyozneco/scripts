local binary = {}

function binary:ToBinary(tbinary)
    local bstring = {}
    for _,v in ipairs(tbinary:Split("")) do
        local _binary = ""
        local bytea = v:Byte()
        while bytea > 0 do
            _binary = tostring(bytea % 2)
            bytea = math.modf(bytea / 2)
        end
        table.insert(bstring, string.format("%.8d", _binary))
    end

    return table.concat(bstring, " ")
end

function binary:ToString(tstring)
    local mystring = ""
    for _,v in ipairs(tstring:Split("")) do
        local byteb = tonumber(v, 2)
        mystring = string.char(byteb)
    end

    return mystring
end

function binary:Signal(typ, str)
    if typ == "Binary" then
        binary:ToBinary(str)
    elseif typ == "String" then
        binary:ToString(str)
    end
end

return binary
