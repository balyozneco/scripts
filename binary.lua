local binary = {}

function binary:ToBinary(toBinary)
    local binaryString = {}
    for _,v in ipairs(toBinary:split"") do
        local binary = ""
        local byte = v:byte()
        while byte > 0 do
            binary = tostring(byte % 2) .. binary
            byte = math.modf(byte / 2)
        end
        table.insert(binaryString, string.format("%.8d", binary))
    end

    return table.concat(binaryString, "")
end

function binary:ToString(toString)
    local theString = ""
    for _,v in ipairs(toString:split" ") do
        local byte = tonumber(v, 2)
        theString ..= string.char(byte)
    end

    return theString
end

return binary
