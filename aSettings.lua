-- aSettings
-- Originially authored by Joe Burke, 21/10/15 03:35BST
-- Last edited: Joe Burke, 31/10/16 18:40BST

-- Private
local replicatedStorage = game.ReplicatedStorage
local serverStorage	= game.ServerStorage
local httpService = game:GetService("HttpService")

local http = {}

-- http.get(str url, bool nocache) - simply a shortcut to httpService:GetAsync()
http["get"] = function(url, nocache)
	return httpService:GetAsync(url, nocache)
end

-- http.jsonDecode(str input) - simply a shortcut to httpService:JSONDecode
http["jsonDecode"] = function(input)
	return httpService:JSONDecode(input)
end

-- http.jsonEncode(str input) - simply a shortcut to httpService:JSONEncode
http["jsonEncode"] = function(input)
	return httpService:JSONEncode(input)
end

function explode(div,str) 
	if (div=='') then return false end 
	local pos,arr = 0,{} 
		for st,sp in function() return string.find(str,div,pos,true) end do 
		table.insert(arr,string.sub(str,pos,st-1))
		pos = sp + 1 
		end 
	table.insert(arr,string.sub(str,pos))
	return arr 
end 
 
-- Public ( returns with module )
local module = {}

