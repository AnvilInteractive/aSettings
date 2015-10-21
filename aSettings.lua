-- aSettings
-- Originially authored by Joe Burke, 21/10/15 03:35BST

-- Private
local replicatedStorage	= game.ReplicatedStorage
local serverStorage		= game.ServerStorage
local httpService		= game:GetService("HttpService")

local http				= {}

-- http.get(str url, bool nocache) - simply a shortcut to httpService:GetAsync()
http["get"] = function(url, nocache)
	return httpService:GetAsync(url, nocache)
end

-- Public ( returns with module )
local module			= {}

