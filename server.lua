local dados = {
    getName = function(self)
        return self.name
    end,

    setName = function(self, name)
        self.name = name
    end,
}

policial = setmetatable({name = "Anderson Talisca"}, {__index = dados})
policial:setName(policial:getName().." De Mota")

bandido = setmetatable({name = "Craudio"}, {__index = dados})
bandido:setName(bandido:getName().." Cardoso")

iprint(policial:getName(), bandido:getName())