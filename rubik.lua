function mirror(algorithm)
end

local function sanitize_rubik_sequence(sequence)
	fix_2p,_ = string.gsub(sequence, "2p", "2")
	fix_wide,_ = string.gsub(fix_2p, "[rufldb]", function(s)
		return string.upper(s) .. "w"
	end)
	fix_3,_ = string.gsub(fix_wide, "3", "p")
	tex.print(fix_3)
end

local function select_oll(param)
	if param == "oll" then
		tex.print('\\RubikCubeGreyAll\\RubikFaceDownAll{Y}')
	else
		tex.print('\\RubikCubeSolved')
	end
end

-- function table
return {
	sanitize_rubik_sequence = sanitize_rubik_sequence,
	select_oll = select_oll,
	mirror = mirror
}
