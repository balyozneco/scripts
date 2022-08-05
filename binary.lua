local binary = {}

function binary:ToBinary(binary)
    local bstring = {}
    for _,v in ipairs(binary:Split("")) do
        local _binary = ""
        local byte = v:Byte()
        while byte > 0 do
            _binary = tostring(byte % 2)
            byte = math.modf(byte / 2)
        end
        table.insert(bstring, string.format("%.8d", _binary))
    end

    return table.concat(bstring, " ")
end

function binary:ToString(tstring)
    local string = ""
    for _,v in ipairs(tstring:Split("")) do
        local byte = tonumber(v, 2)
        string = string.char(byte)
    end

    return string
end

return binary
