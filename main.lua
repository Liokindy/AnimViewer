if (os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1") then require("lldebugger").start() end

local colorMult = 1 / 255
Colors = {
	["Skin1"] =					{{135 * colorMult,83 * colorMult,48 * colorMult},{116 * colorMult,71 * colorMult,41 * colorMult},{96 * colorMult,58 * colorMult,34 * colorMult}},
	["Skin2"] =					{{255 * colorMult,149 * colorMult,98 * colorMult},{255 * colorMult,124 * colorMult,62 * colorMult},{192 * colorMult,118 * colorMult,092 * colorMult}},
	["Skin3"] =					{{255 * colorMult,172 * colorMult,132 * colorMult},{255 * colorMult,156 * colorMult,108 * colorMult},{192 * colorMult,096 * colorMult,048 * colorMult}},
	["Skin4"] =					{{255 * colorMult,192 * colorMult,160 * colorMult},{255 * colorMult,172 * colorMult,132 * colorMult},{224 * colorMult,128 * colorMult,114 * colorMult}},
	["Skin5"] =					{{224 * colorMult,224 * colorMult,224 * colorMult},{208 * colorMult,192 * colorMult,192 * colorMult},{192 * colorMult,160 * colorMult,160 * colorMult}},
	["ClothingLightGray"] =		{{224 * colorMult,224 * colorMult,224 * colorMult},{192 * colorMult,192 * colorMult,192 * colorMult},{128 * colorMult,128 * colorMult,128 * colorMult}},
	["ClothingLightPink"] =		{{255 * colorMult,192 * colorMult,192 * colorMult},{255 * colorMult,160 * colorMult,160 * colorMult},{255 * colorMult,128 * colorMult,128 * colorMult}},
	["ClothingLightRed"] =		{{255 * colorMult,64 * colorMult,48 * colorMult},{224 * colorMult,48 * colorMult,32 * colorMult},{192 * colorMult,32 * colorMult,16 * colorMult}},
	["ClothingLightOrange"] =	{{255 * colorMult,160 * colorMult,064 * colorMult},{255 * colorMult,128 * colorMult,032 * colorMult},{192 * colorMult,96 * colorMult,016 * colorMult}},
	["ClothingLightYellow"] =	{{255 * colorMult,224 * colorMult,000 * colorMult},{240 * colorMult,192 * colorMult,000 * colorMult},{208 * colorMult,150 * colorMult,000 * colorMult}},
	["ClothingLightGreen"] =	{{096 * colorMult,192 * colorMult,064 * colorMult},{016 * colorMult,160 * colorMult,000 * colorMult},{008 * colorMult,128 * colorMult,000 * colorMult}},
	["ClothingLightCyan"] =		{{024 * colorMult,192 * colorMult,192 * colorMult},{016 * colorMult,160 * colorMult,160 * colorMult},{08 * colorMult,128 * colorMult,128 * colorMult}},
	["ClothingLightBlue"] =		{{160 * colorMult,160 * colorMult,255 * colorMult},{128 * colorMult,128 * colorMult,255 * colorMult},{96 * colorMult,96 * colorMult,192 * colorMult}},
	["ClothingLightPurple"] =	{{224 * colorMult,128 * colorMult,224 * colorMult},{192 * colorMult,64 * colorMult,192 * colorMult},{160 * colorMult,32 * colorMult,160 * colorMult}},
	["ClothingLightBrown"] =	{{192 * colorMult,108 * colorMult,096 * colorMult},{160 * colorMult,096 * colorMult,064 * colorMult},{128 * colorMult,064 * colorMult,032 * colorMult}},
	["ClothingGray"] =			{{096 * colorMult,096 * colorMult,096 * colorMult},{064 * colorMult,064 * colorMult,064 * colorMult},{032 * colorMult,032 * colorMult,032 * colorMult}},
	["ClothingPink"] =			{{255 * colorMult,128 * colorMult,128 * colorMult},{232 * colorMult,96 * colorMult,96 * colorMult},{192 * colorMult,064 * colorMult,064 * colorMult}},
	["ClothingRed"] =			{{232 * colorMult,040 * colorMult,000 * colorMult},{180 * colorMult,032 * colorMult,000 * colorMult},{136 * colorMult,016 * colorMult,000 * colorMult}},
	["ClothingOrange"] =		{{255 * colorMult,128 * colorMult,000 * colorMult},{192 * colorMult,096 * colorMult,000 * colorMult},{128 * colorMult,064 * colorMult,000 * colorMult}},
	["ClothingYellow"] =		{{240 * colorMult,224 * colorMult,000 * colorMult},{208 * colorMult,192 * colorMult,000 * colorMult},{176 * colorMult,160 * colorMult,000 * colorMult}},
	["ClothingGreen"] =			{{032 * colorMult,160 * colorMult,000 * colorMult},{016 * colorMult,128 * colorMult,000 * colorMult},{008 * colorMult,096 * colorMult,000 * colorMult}},
	["ClothingCyan"] =			{{016 * colorMult,128 * colorMult,128 * colorMult},{008 * colorMult,096 * colorMult,096 * colorMult},{000 * colorMult,064 * colorMult,064 * colorMult}},
	["ClothingBlue"] =			{{64 * colorMult,64 * colorMult,224 * colorMult},{48 * colorMult,48 * colorMult,192 * colorMult},{36 * colorMult,36 * colorMult,160 * colorMult}},
	["ClothingPurple"] =		{{192 * colorMult,064 * colorMult,192 * colorMult},{160 * colorMult,032 * colorMult,160 * colorMult},{128 * colorMult,016 * colorMult,128 * colorMult}},
	["ClothingBrown"] =			{{128 * colorMult,064 * colorMult,048 * colorMult},{096 * colorMult,048 * colorMult,032 * colorMult},{064 * colorMult,032 * colorMult,016 * colorMult}},
	["ClothingDarkGray"] =		{{048 * colorMult,048 * colorMult,048 * colorMult},{024 * colorMult,024 * colorMult,024 * colorMult},{012 * colorMult,012 * colorMult,012 * colorMult}},
	["ClothingDarkPink"] =		{{160 * colorMult,064 * colorMult,064 * colorMult},{128 * colorMult,048 * colorMult,048 * colorMult},{096 * colorMult,032 * colorMult,032 * colorMult}},
	["ClothingDarkRed"] =		{{128 * colorMult,016 * colorMult,000 * colorMult},{096 * colorMult,008 * colorMult,000 * colorMult},{064 * colorMult,000 * colorMult,000 * colorMult}},
	["ClothingDarkOrange"] =	{{128 * colorMult,064 * colorMult,000 * colorMult},{096 * colorMult,032 * colorMult,000 * colorMult},{064 * colorMult,032 * colorMult,000 * colorMult}},
	["ClothingDarkYellow"] =	{{128 * colorMult,128 * colorMult,000 * colorMult},{096 * colorMult,096 * colorMult,000 * colorMult},{064 * colorMult,064 * colorMult,000 * colorMult}},
	["ClothingDarkGreen"] =		{{016 * colorMult,128 * colorMult,000 * colorMult},{012 * colorMult,096 * colorMult,000 * colorMult},{008 * colorMult,048 * colorMult,000 * colorMult}},
	["ClothingDarkCyan"] =		{{008 * colorMult,096 * colorMult,096 * colorMult},{000 * colorMult,064 * colorMult,064 * colorMult},{000 * colorMult,032 * colorMult,032 * colorMult}},
	["ClothingDarkBlue"] =		{{64 * colorMult,64 * colorMult,160 * colorMult},{32 * colorMult,32 * colorMult,128 * colorMult},{24 * colorMult,24 * colorMult,96 * colorMult}},
	["ClothingDarkPurple"] =	{{128 * colorMult,000 * colorMult,128 * colorMult},{096 * colorMult,000 * colorMult,096 * colorMult},{064 * colorMult,000 * colorMult,064 * colorMult}},
	["ClothingDarkBrown"] =		{{096 * colorMult,048 * colorMult,032 * colorMult},{064 * colorMult,032 * colorMult,016 * colorMult},{048 * colorMult,024 * colorMult,008 * colorMult}},
	["ClothingWhite"] =			{{255 * colorMult,255 * colorMult,255 * colorMult},{192 * colorMult,192 * colorMult,192 * colorMult},{160 * colorMult,160 * colorMult,160 * colorMult}},
	["ClothingBlack"] =			{{0 * colorMult,0 * colorMult,0 * colorMult},{0 * colorMult,0 * colorMult,0 * colorMult},{0 * colorMult,0 * colorMult,0 * colorMult}}
}

function ItemGlobalIndexToType(index)
	if (index >= 0) then
		return math.floor(index / 50)
	end
	return -(-math.ceil(index / 50) + 1)
end
function ItemGlobalIndexToLocalIndex(index)
	return math.abs(math.mod(index, 50))
end
function ItemGetGlobalIndex(typeIndex, localIndex)
	return typeIndex * 50 + localIndex
end

--[[
	GlobalIDs (TypeID * 50 + LocalID)

	Weapons
		ThrowMode
			-45 -1_5
		Normal
			-44 -1_6
		SheatedHandgun
			-43 -1_7
		SheatedRifle
			-42 -1_8
		SheatedMelee
			-41 -1_9
	SubAnimations
		Upper
			-40 -1_10
		Tail
			-46 -1_4
BodyParts
    Head
        0 0_0
        1 0_1
        2 0_2
        3 0_3
        4 0_4
        5 0_5
        6 0_6
        7 0_7
        8 0_8
    Body
        50 1_0
        51 1_1
        52 1_2
        53 1_3
        54 1_4
        55 1_5
        56 1_6
        57 1_7
        58 1_8
        59 1_9
    Arms
        100 2_0
        101 2_1
        102 2_2
        103 2_3
        104 2_4
        105 2_5
        106 2_6
        107 2_7
        108 2_8
        109 2_9
        110 2_10
        111 2_11
        112 2_12
        113 2_13
        114 2_14
        115 2_15
        116 2_16
        117 2_17
    Hands
        150 3_0
        151 3_1
        152 3_2
        153 3_3
        154 3_4
        155 3_5
        156 3_6
        157 3_7
    Swing
        159 3_9
        160 3_10
        161 3_11
    Legs
        200 4_0
        201 4_1
        202 4_2
        203 4_3
        204 4_4
        205 4_5
        206 4_6
        207 4_7
        208 4_8
        209 4_9
        210 4_10
        211 4_11
        212 4_12
        213 4_13
        214 4_14
        215 4_15
        216 4_16
        217 4_17
        218 4_18
        219 4_19
        220 4_20
]]

function ToNumber(str)
	str = string.gsub(str, ",", ".")
	if (string.find(str, 'E')) then
		local chunks = SplitString(str, 'E')
		local base = tonumber(chunks[1])
		local exponent = tonumber(chunks[2])
		-- "-1,192093E-07"

		if (exponent == 0) then
			return 1
		end
		if (exponent == 1) then
			return base
		end
		if (exponent > 1) then
			return math.pow(base, exponent)
		end
		if (exponent < 0) then
			return (1 / math.pow(10, math.abs(exponent))) * base
		end
	end
	
	return tonumber(str)
end

-- SFD DataTypes
function AnimationData(frames, name, frameCount, time, bytes, path)
	local ad = {}
	ad.Frames = frames
	ad.FrameCount = frameCount
	ad.TotalTime = time
	ad.Name = name

	ad.SizeInBytes = bytes
	ad.FilePath = path
	return ad
end
function AnimationFrameData(parts, collisions, frameEvent, time)
	local afd = {}
	afd.Parts = parts
	afd.Collisions = collisions
	afd.Event = string.upper(frameEvent)
	afd.Time = time
	afd.IsRecoil = afd.Event == "RECOIL"
	return afd
end
function AnimationPartData(id, xx, yy, rotation, flip, sx, sy, postFix)
	local apd = {}
	apd.GlobalID = id
	apd.X = xx
	apd.Y = yy
	apd.Rotation = rotation
	apd.Flip = flip
	apd.Type = ItemGlobalIndexToType(apd.GlobalID)
	apd.LocalID = ItemGlobalIndexToLocalIndex(apd.GlobalID)
	apd.Scale = {X = sx, Y = sy}
	apd.PostFix = postFix
	return apd
end
function AnimationCollisionData(id, xx, yy, width, height)
	local acd = {}
	acd.ID = id
	acd.X = xx
	acd.Y = yy
	acd.Width = width
	acd.Height = height
	return acd
end
function LoadAnimation(filePath, fileName)
	local startTime = love.timer.getTime()

	-- Read lines to a table
	local fileLines = {}
	local fileLineCount = 0
	for line in love.filesystem.lines(filePath) do
		if (line ~= "") then
			table.insert(fileLines, line)
			fileLineCount = fileLineCount + 1
		end
	end
	-- debugprintf("-- Animation file lines: %d", fileLineCount)

	-- Read the file lines
	local animName = fileName
	if (string.find(animName, ".txt")) then
		animName = animName:sub(1, animName:len() - 4)
	end

	local animFrames = {}
	local animFrameCount = 0
	local animTime = 0
	local animSizeInBytes = love.filesystem.getInfo(filePath).size
	for i=1,fileLineCount do
		local line = fileLines[i]
		
		-- Read the frames
		if (line:sub(1, 5) == "frame") then
			i = i + 1
			local frameTime = tonumber(SplitString(fileLines[i])[2])
			i = i + 1
			local frameEvent = SplitString(fileLines[i])[2] or ""

			i = i + 1
			local frameParts = {}
			while(fileLines[i] ~= nil and fileLines[i]:sub(1, 4) == "part") do
				local lineChunks = SplitString(fileLines[i])
				local partGlobalID = tonumber(lineChunks[2])
				local partX = ToNumber(lineChunks[3])
				local partY = ToNumber(lineChunks[4])
				local partRotation = ToNumber(lineChunks[5])
				local partFlip = tonumber(lineChunks[6])
				local partSX = ToNumber(lineChunks[7])
				local partSY = ToNumber(lineChunks[8])
				local partPostFix = lineChunks[9] or ""

				table.insert(frameParts, 1, AnimationPartData(partGlobalID, partX, partY, partRotation, partFlip, partSX, partSY, partPostFix))
				i = i + 1
			end

			-- End of the file or found another frame header
			table.insert(animFrames, AnimationFrameData(frameParts, nil, frameEvent, frameTime))
			animFrameCount = animFrameCount + 1
			animTime = animTime + frameTime
		end
	end

	-- Finished reading the entire animation file, add to list
	debugprintf("Loaded animation \"%s\" - %.2fms", animName, (love.timer.getTime() - startTime) * 1000)
	return AnimationData(animFrames, animName, animFrameCount, animTime, animSizeInBytes, filePath)
end

function ClothingItem(folderPath, palette1, palette2, palette3)
	if (folderPath == nil or folderPath == "nil") then
		return nil
	end

	local createTime = love.timer.getTime()

	local ci = {}
	ci.Path = folderPath
	ci.Colors = {}
	ci.Palettes = {palette1, palette2, palette3}
	if (palette1 ~= nil and Colors[palette1] ~= nil) then
		ci.Colors[1] = { Colors[palette1][1], Colors[palette1][2], Colors[palette1][3] }
	end
	if (palette2 ~= nil and Colors[palette2] ~= nil) then
		ci.Colors[2] = { Colors[palette2][1], Colors[palette2][2], Colors[palette2][3] }
	end
	if (palette3 ~= nil and Colors[palette3] ~= nil) then
		ci.Colors[3] = { Colors[palette3][1], Colors[palette3][2], Colors[palette3][3] }
	end

	folderPath = GAME_MOUNT_PATH .. folderPath

	ci.Textures = {}

	local shade1 = 1
	local shade2 = 192 / 255
	local shade3 = 128 / 255

	for _,fileName in pairs(love.filesystem.getDirectoryItems(folderPath)) do
		local filePath = string.format("%s/%s", folderPath, fileName)
		local fileNoExtension = fileName:sub(1, fileName:len() - 4)

		--if (fileNoExtension == ".png") then
			local fileChunks, fileChunkCount = SplitString(fileNoExtension, '_')
			local textureID = string.format("%s_%s", fileChunks[fileChunkCount - 1], fileChunks[fileChunkCount]) 
			local textureData = love.image.newImageData(filePath)
	
			textureData:mapPixel(function(x, y, r, g, b, a)
				if (a <= 0.1) then
					return r,g,b,a
				end
	
				colorTableA = {r,g,b}
				colorTableB = {g,b,r}
				colorTableC = {b,r,g}
				for i=1,3 do
					if (ci.Colors[i] ~= nil) then
						local targetColor = colorTableA[i]
						local sideColor = colorTableB[i]
						local oppColor = colorTableC[i]
						if (targetColor == shade1 and sideColor == 0 and oppColor == 0) then
							r = ci.Colors[i][1][1]
							g = ci.Colors[i][1][2]
							b = ci.Colors[i][1][3]
						end
						if (targetColor == shade2 and sideColor == 0 and oppColor == 0) then
							r = ci.Colors[i][2][1]
							g = ci.Colors[i][2][2]
							b = ci.Colors[i][2][3]
						end
						if (targetColor == shade3 and sideColor == 0 and oppColor == 0) then
							r = ci.Colors[i][3][1]
							g = ci.Colors[i][3][2]
							b = ci.Colors[i][3][3]
						end
					end
				end
			
				return r,g,b,a
			end )
	
			ci.Textures[textureID] = love.graphics.newImage(textureData)
			ci.Textures[textureID]:setFilter("nearest", "nearest")
		--end
	end

	debugprintf("Created ClothingItem (%s, %s, %s) \"%s\" - %.2fms", palette1, palette2, palette3, folderPath, (love.timer.getTime() - createTime) * 1000)
	return ci
end

function SplitString(str, separator)
	separator = separator or ' '
	local chunks = {}
	local count = 0
	local temp = ""
	for i=1,string.len(str) + 1 do
		local char = string.sub(str, i, i)
		if (char == separator or i == string.len(str) + 1) then
			table.insert(chunks, temp)
			count = count + 1
			temp = ""
		else
			temp = temp .. char
		end
	end

	return chunks, count
end

function debugprintf(input, ...)
	print(string.format(input, ...))
end
function debugprint(input)
	print(input)
end

DEBUG_FLAG = false
Animations = {}
AnimationCount = 0

Equipment = {}
Equipment.Items = {}
Equipment.Weapons = {}
Weapons = {}
AnimPreview = {}

CurrentlyDrawnWeapon = 0
ShowWeapons = true

Zoom = 1
TranslationX = 0
TranslationY = 0

ConsoleTexts = {}
function AddConsoleText(text, t)
	table.insert(ConsoleTexts, {
		Text = text,
		Time = t or 3
	})
end

function love.load()
	if (love.filesystem.isFused()) then
		love.filesystem.mount(love.filesystem.getSourceBaseDirectory(), "gameroot")
		GAME_MOUNT_PATH = "gameroot/"
	else
		GAME_MOUNT_PATH = ""
	end

	-- Load the animations
	local animLoadStart = love.timer.getTime()
	AnimationCount = 0
	for _,file in pairs(love.filesystem.getDirectoryItems(GAME_MOUNT_PATH .. "Animations")) do
		local anim = LoadAnimation(GAME_MOUNT_PATH .. "Animations/" .. file, file)
		AnimationCount = AnimationCount + 1
		Animations[AnimationCount] = anim
	end
	debugprintf("Finished loading animations - %.2fms", (love.timer.getTime() - animLoadStart) * 1000)

	-- Add a preview
	AnimPreview.CurrentAnimation = Animations[22]
	AnimPreview.CurrentFrame = AnimPreview.CurrentAnimation.Frames[1]
	AnimPreview.Time = 0
	AnimPreview.AnimationIndex = 22
	AnimPreview.FrameIndex = 1
	AnimPreview.FrameEndIndex = AnimPreview.CurrentAnimation.FrameCount
	AnimPreview.Loop = true
	AnimPreview.Pause = false
	AnimPreview.Scale = 10
		
	-- Weapons
	Equipment.Weapons.MeleeS = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/MeleeS.png")
	Equipment.Weapons.MeleeD = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/MeleeD.png")
	Equipment.Weapons.HandgunS = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/HandgunS.png")
	Equipment.Weapons.HandgunD = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/HandgunD.png")
	Equipment.Weapons.RifleS = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/RifleS.png")
	Equipment.Weapons.RifleD = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/RifleD.png")
	Equipment.Weapons.ThrowableD = love.graphics.newImage(GAME_MOUNT_PATH .. "Weapons/ThrowableD.png")
	for _,tex in pairs(Equipment.Weapons) do
		tex:setFilter("nearest", "nearest")
	end

	love.graphics.setBackgroundColor(0.125, 0.125, 0.125, 1)
	love.keyboard.setKeyRepeat(true)
end

function DoRefresh(forceRefreshClothingItems)

	local refreshStartTime = love.timer.getTime()
	debugprintf("REFRESHING...")
	local i = 0
	for line in love.filesystem.lines(GAME_MOUNT_PATH .. "equipment.txt" ) do
		i = i + 1
		if (i <= 10) then
			if (line == "" or line:sub(1, 3) == "nil" or line:sub(1,1) == "|") then
				ClothingItem(nil)
			else
				local item = Equipment.Items[i]
				local strChunks = SplitString(line, '|')
				debugprintf("- Reading from equipment... - \"%s\" (%s %s %s)", strChunks[1], strChunks[2], strChunks[3], strChunks[4])

				if (item == nil or
					item.Path ~= strChunks[1] or
					item.Palettes[1] ~= strChunks[2] or
					item.Palettes[2] ~= strChunks[3] or
					item.Palettes[3] ~= strChunks[4] or
					forceRefreshClothingItems
					) then
					Equipment.Items[i] = ClothingItem(strChunks[1], strChunks[2], strChunks[3], strChunks[4])
				end
			end
		end
	end

	-- Refresh current animation
	Animations[AnimPreview.AnimationIndex] = LoadAnimation(AnimPreview.CurrentAnimation.FilePath, AnimPreview.CurrentAnimation.Name)
	AnimPreview.CurrentAnimation = Animations[AnimPreview.AnimationIndex]
	AnimPreview.FrameIndex = 0
	AnimPreview.FrameEndIndex = Animations[AnimPreview.AnimationIndex].FrameCount
	

	debugprintf("REFRESHED FINISHED... - %.2fms", (love.timer.getTime() - refreshStartTime) * 1000)
	AddConsoleText("Refreshed")
end
function love.focus(focused)
	if (focused) then
		DoRefresh()
	end
end

function love.keypressed(key, scancode, isrepeat)
	if (key == 'r') then
		DoRefresh(true)
	end

	if (key == 'k') then
		AnimPreview.Pause = not AnimPreview.Pause
	end

	if (key == ',' or key == '.') then

		local advanceAmount = (key == ',' and -1 or 1)
		AnimPreview.Pause = true
		AnimPreview.FrameIndex = AnimPreview.FrameIndex + advanceAmount
		AnimPreview.Time = 0
		if (AnimPreview.FrameIndex > AnimPreview.FrameEndIndex) then
			AnimPreview.FrameIndex = 1
		elseif (AnimPreview.FrameIndex < 1) then
			AnimPreview.FrameIndex = AnimPreview.FrameEndIndex
		end

		AnimPreview.CurrentFrame = AnimPreview.CurrentAnimation.Frames[AnimPreview.FrameIndex]
	end
	if (key == 'b') then
		DEBUG_FLAG = not DEBUG_FLAG
	end

	if (tonumber(key) ~= nil and tonumber(key) >= 1 and tonumber(key) <= 4) then
		CurrentlyDrawnWeapon = tonumber(key)
	end

	if (key == 'q') then
		CurrentlyDrawnWeapon = 0
	end
	if (key == 'w') then
		ShowWeapons = not ShowWeapons
	end

	if (key == "left" or key == "right") then
		AnimPreview.AnimationIndex = AnimPreview.AnimationIndex + (key == "left" and -1 or 1)
		
		if (AnimPreview.AnimationIndex > AnimationCount) then
			AnimPreview.AnimationIndex = 1
		elseif (AnimPreview.AnimationIndex < 1) then
			AnimPreview.AnimationIndex = AnimationCount
		end

		AnimPreview.CurrentAnimation = Animations[AnimPreview.AnimationIndex]
		AnimPreview.CurrentFrame = AnimPreview.CurrentAnimation.Frames[1]
		AnimPreview.FrameIndex = 1
		AnimPreview.Time = 0
		AnimPreview.FrameEndIndex = AnimPreview.CurrentAnimation.FrameCount
	end

	if (key == "l") then
		AnimPreview.Loop = not AnimPreview.Loop
	end
end
function love.update(dt)
	for i,ctext in ipairs(ConsoleTexts) do
		if (ctext ~= nil) then
			ctext.Time = ctext.Time - dt
			if (ctext.Time <= 0) then
				table.remove(ConsoleTexts, i)
			end
		end
	end


	if (not AnimPreview.Pause) then
		AnimPreview.Time = AnimPreview.Time + dt * 1000
	end

	if (AnimPreview.Time >= AnimPreview.CurrentFrame.Time) then
		AnimPreview.Time = 0
		AnimPreview.FrameIndex = AnimPreview.FrameIndex + 1
		if (AnimPreview.FrameIndex > AnimPreview.FrameEndIndex) then
			if (AnimPreview.Loop) then
				AnimPreview.FrameIndex = 1
			else
				AnimPreview.FrameIndex = AnimPreview.FrameEndIndex
				AnimPreview.Time = AnimPreview.CurrentFrame.Time
			end
		end

		AnimPreview.CurrentFrame = AnimPreview.CurrentAnimation.Frames[AnimPreview.FrameIndex]
	end	
end

function love.mousemoved(x, y, dx, dy, istouch)
	if (love.mouse.isDown(3)) then
		TranslationX = math.max(math.min(TranslationX + dx, 1000), -1000)
		TranslationY = math.max(math.min(TranslationY + dy, 1000), -1000)

		love.mouse.setGrabbed(true)
		if (x + dx * 1.25 >= love.graphics.getWidth()) then
			love.mouse.setX(1)
		end
		if (x + dx * 1.25 <= 0) then
			love.mouse.setX(love.graphics.getWidth() - 1)
		end

		if (y + dy * 1.25 >= love.graphics.getHeight()) then
			love.mouse.setY(1)
		end
		if (y + dy * 1.25 <= 0) then
			love.mouse.setY(love.graphics.getHeight() - 1)
		end
	end
	love.mouse.setGrabbed(false)
end

function love.wheelmoved(x, y)
	Zoom = math.max(math.min(Zoom + y * 0.08, 4), 0.5)
end

function love.draw()
	love.graphics.translate(TranslationX + love.graphics.getWidth() * 0.5, TranslationY + love.graphics.getHeight() * 0.5)
	love.graphics.scale(Zoom, Zoom)

	-- Origin axis
	love.graphics.setLineWidth(1 / Zoom)
	love.graphics.setColor(1, 0, 0, 0.5)
	love.graphics.line(-love.graphics.getWidth(), 0, love.graphics.getWidth(), 0)
	love.graphics.setColor(0, 1, 0, 0.5)
	love.graphics.line(0, -love.graphics.getHeight(), 0, love.graphics.getHeight())

	-- Animation parts (Body, weapons, etc)
	for _,part in ipairs(AnimPreview.CurrentFrame.Parts) do
		local foundItem = false
		local hflip = (part.Flip == 1) and -1 or 1
		local vflip = (part.Flip == 2) and -1 or 1
		love.graphics.setColor(1, 1, 1, 1)
		if (part.Type >= 0) then
			for i=1,10 do
				local item = Equipment.Items[i]
				if (item ~= nil) then
					local itemTex = item.Textures[part.Type .. "_" .. part.LocalID]
					if (itemTex ~= nil) then
						foundItem = true

						love.graphics.draw(
							itemTex,
							part.X * AnimPreview.Scale,
							part.Y * AnimPreview.Scale,
							part.Rotation,
							part.Scale.X * hflip * AnimPreview.Scale,
							part.Scale.Y * vflip * AnimPreview.Scale,
							itemTex:getWidth() / 2,
							itemTex:getHeight() / 2
						)
					end
				end
			end
		else
			local tex = nil
			if (ShowWeapons) then
				-- Drawn weapons
				if (CurrentlyDrawnWeapon ~= 0) then
					-- Main hand
					if (part.LocalID == 6) then
						if (CurrentlyDrawnWeapon == 1) then
							tex = Equipment.Weapons.MeleeD
						elseif (CurrentlyDrawnWeapon == 2) then
							tex = Equipment.Weapons.HandgunD
						elseif (CurrentlyDrawnWeapon == 3) then
							tex = Equipment.Weapons.RifleD
						end
					end

					if (part.LocalID == 5 and CurrentlyDrawnWeapon == 4) then
						-- Offhand (Throwables)
						tex = Equipment.Weapons.ThrowableD
					end
				end

				-- Sheated weapons
				if (part.LocalID == 7 and CurrentlyDrawnWeapon ~= 2) then
					-- Sheated Handgun
					tex = Equipment.Weapons.HandgunS
				end
				if (part.LocalID == 8 and CurrentlyDrawnWeapon ~= 3) then
					-- Sheated Rifle
					tex = Equipment.Weapons.RifleS
				end
				if (part.LocalID == 9 and CurrentlyDrawnWeapon ~= 1) then
					-- Sheated Melee
					tex = Equipment.Weapons.MeleeS
				end
			end

			if (tex ~= nil) then
				foundItem = true
				love.graphics.draw(
					tex,
					part.X * AnimPreview.Scale,
					part.Y * AnimPreview.Scale,
					part.Rotation,
					part.Scale.X * hflip * AnimPreview.Scale,
					part.Scale.Y * vflip * AnimPreview.Scale,
					tex:getWidth() / 2,
					tex:getHeight() / 2
				)
			end		
		end
	
		if (DEBUG_FLAG) then
			local drawColor = {1, (foundItem and 1 or 0.5), (foundItem and 1 or 0.5), 0.125}
			love.graphics.setColor(drawColor)
			love.graphics.rectangle("line", (part.X - 8) * AnimPreview.Scale, (part.Y - 8) * AnimPreview.Scale, 16 * AnimPreview.Scale, 16 * AnimPreview.Scale)
			drawColor[4] = 0.25
			love.graphics.setColor(drawColor)
			love.graphics.print(part.Type .. ":" .. part.LocalID, (part.X - 8) * AnimPreview.Scale, (part.Y - 8) * AnimPreview.Scale)
		end
	end

	-- "HUD"
	love.graphics.origin()

	local cyy = 0
	for i,ctext in ipairs(ConsoleTexts) do
		if (ctext ~= nil) then
			local alpha = 1
			if (ctext.Time <= 1) then
				alpha = ctext.Time
			end
			love.graphics.setColor(1, 1, 1, alpha)
			love.graphics.print(ctext.Text, 0, cyy, 0, 1, 1)
			-- love.graphics.print(text, x, y, r, sx, sy, ox, oy, kx, ky)
			cyy = cyy + 14
		end
	end

	-- Timeline
	love.graphics.setColor(1, 1, 1, 1)

	local timelineText = string.format("(%d/%d): \"%s\" | %d - (%.2f/%d) - (%d/%d)", AnimPreview.AnimationIndex, AnimationCount, AnimPreview.CurrentAnimation.Name, AnimPreview.CurrentAnimation.TotalTime, AnimPreview.Time, AnimPreview.CurrentFrame.Time, AnimPreview.FrameIndex, AnimPreview.FrameEndIndex)
	love.graphics.print(timelineText, 0, love.graphics.getHeight() - 16)

	local timelineX = 16
	local timelineY = love.graphics.getHeight() - 64
	local timelineW = love.graphics.getWidth() - 32
	love.graphics.setColor(1, 1, 1, 0.5)
	love.graphics.line(timelineX, timelineY, timelineX + timelineW, timelineY)

	local timelineMsWidth = timelineW / AnimPreview.CurrentAnimation.TotalTime
	local xx = timelineX
	love.graphics.setColor(1, 1, 1, 1)
	for i,frame in ipairs(AnimPreview.CurrentAnimation.Frames) do
		love.graphics.line(xx, timelineY - 12, xx, timelineY + 12)
		love.graphics.print(frame.Event, xx, timelineY + (i % 2 == 0 and 14 or -26), 0, 0.75, 0.75)
		
		if (AnimPreview.FrameIndex == i) then
			local scrollerProgress = AnimPreview.Time / AnimPreview.CurrentFrame.Time
			local scrollerX = frame.Time * timelineMsWidth * scrollerProgress
			love.graphics.rectangle("fill", xx + scrollerX - 2, timelineY - 24, 4, 48)
		end
		xx = xx + frame.Time * timelineMsWidth
	end

	-- Icons
	love.graphics.setColor(AnimPreview.Loop and {0.5,1,0.5,1} or {1,0.5,0.5,1})	
	love.graphics.print("LOOPING ('L')", timelineX, timelineY - 64 - 16 * 0, 0)
	love.graphics.setColor(AnimPreview.Pause and {0.5,1,0.5,1} or {1,0.5,0.5,1})	
	love.graphics.print("PAUSED ('K')", timelineX, timelineY - 64 - 16 * 1, 0)
	love.graphics.setColor(1, 1, 1, 1)	
	love.graphics.print("DRAWN WEAPON ('1'-'4'): " .. (CurrentlyDrawnWeapon == 0 and "NONE" or CurrentlyDrawnWeapon), timelineX, timelineY - 64 - 16 * 2, 0)
	love.graphics.setColor(1, 1, 1, 1)	
	love.graphics.print("SHEATHE WEAPON ('Q')", timelineX, timelineY - 64 - 16 * 3, 0)
	love.graphics.setColor(ShowWeapons and {0.5,1,0.5,1} or {1,0.5,0.5,1})
	love.graphics.print("SHOW/HIDE WEAPON ('W')", timelineX, timelineY - 64 - 16 * 4, 0)
	love.graphics.setColor(DEBUG_FLAG and {0.5,1,0.5,1} or {1,0.5,0.5,1})
	love.graphics.print("SHOW/HIDE DEBUG ('B')", timelineX, timelineY - 64 - 16 * 5, 0)
	love.graphics.setColor(1, 1, 1, 1)	
	love.graphics.print("CYCLE ANIMATIONS ('LEFT', 'RIGHT')", timelineX, timelineY - 64 - 16 * 6, 0)
	love.graphics.setColor(1, 1, 1, 1)	
	love.graphics.print("REWIND/STEP SINGLE FRAME (',', '.')", timelineX, timelineY - 64 - 16 * 7, 0)

	-- Shameless self-plug
	love.graphics.setColor(1, 1, 1, 0.5)
	love.graphics.print("By Liokindy", love.graphics.getWidth() - 72)
end
