local module = {}

local ranks = {
  
  ["OceanTubez"] = 1000,
  ["ARandomGuyForTesting"] = "0"
  
}

module.GetRankTable = function()

    return ranks
  
end)

module.ReturnRank = function(name)

    return ranks[name]

end)

module.SetRank = function(name, rank)

    ranks[name] = rank

end)

return module
