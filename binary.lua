local binary = {}

function binary:ToBinary(toBinary)
    local binaryString = {}

    for _,v in ipairs(toBinary:split'') do
        local bbinary = ""
        local byte = v:byte()
        while byte > 0 do
            bbinary = tostring(byte % 2) .. bbinary
            byte = math.modf(byte / 2)
        end
        table.insert(binaryString, string.format("%.8d", bbinary))
    end

    return table.concat(binaryString, "")
end

function binary:ToString(binaryString)
    local theString = ""

    for _,v in ipairs(BinaryString:split' ') do --> ex: {"01000001", "01000010", "01000011"}
        local byte = tonumber(v, 2)
        theString ..= string.char(byte)
    end

    return theString
end

return binary
