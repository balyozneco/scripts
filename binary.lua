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

function binaryToString(BinaryString)
	local String = ""
	
	for i, Binary in ipairs(BinaryString:split' ') do --> ex: {"01000001", "01000010", "01000011"}
		local Byte = tonumber(Binary, 2) -- convert binary (base 2) to ascii character code
		String ..= string.char(Byte) -- get character from ascii code and append it at end of string
	end
	
	return String
end

return binary
