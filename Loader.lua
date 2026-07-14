local Data = {
	Owner = "Mana",
	Library = "Neverlose-UI"
}

local BaseURL = ("https://raw.githubusercontent.com/%s-scripts/%s/refs/heads/main/Games/"):format(Data.Owner, Data.Library)

local function EncodeSpaces(str)
	return BaseURL .. str:gsub(" ", "%%20")
end

local Games = {
	-- [[Anime Card Collection]] --
	[76285745979410] = EncodeSpaces("Anime Card Collection.lua"),

	
}


function LoadScript(id)
	local url = Games[id]

	if not url then
		warn("Game not supported:", id)
		return
	end
	
	print("Loading:", url)

	local scriptSource = game:HttpGetAsync(url)
	loadstring(scriptSource)()
	print("Welcome "..game.Players.LocalPlayer.Name.."!")

end

LoadScript(game.PlaceId)


local function identifyExecutorName(small_name)
	small_name = small_name or false
	if identifyexecutor then
		return small_name == true and string.split(identifyexecutor(), " ")[1]:lower() or string.split(identifyexecutor(), " ")[1]
	end
	return "Unknown"
end

local Supported_Executors = {
	'wave',
	'volt',
	'potassium',
	'seliware'
}

-- if table.find(Supported_Executors, identifyExecutorName(true)) then
-- 	task.wait(5)
-- else
-- 	task.wait(5)
-- end

-- print(game.PlaceId)
-- setclipboard(tostring(game.PlaceId))