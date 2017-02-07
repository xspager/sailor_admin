local lfs = require"lfs"

return {
    index = function(page)
        local n = require "sailor.model"("user"):count()
        local models = {}
        for file in lfs.dir("models/") do
            local filename_without_extention = string.match(file, "(.*)%.lua$")
            if filename_without_extention ~= nil then
                local m = require("models/"..filename_without_extention)
                models[filename_without_extention] = m
            end
        end
        local entries = {}
        for name, model in pairs(models) do
            local all = require "sailor.model"(name):find_all()
            entries[name] = all
        end
        page:render('index', {
            user_count = n,
            models=models,
            entries=entries
        })
    end
}
