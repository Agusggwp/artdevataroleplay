-- Simple Locale system for ESX compatibility
Locale = {}
Locale.__index = Locale

function Locale:new(data)
    local self = setmetatable({}, Locale)
    self.phrases = data.phrases or {}
    self.warnOnMissing = data.warnOnMissing or false
    return self
end

function Locale:__call(key)
    local keys = string.split(key, ".")
    local value = self.phrases
    
    for _, k in ipairs(keys) do
        if type(value) == "table" then
            value = value[k]
        else
            if self.warnOnMissing then
                print(("[^3WARNING^7] Translation missing: %s"):format(key))
            end
            return key
        end
    end
    
    return value or key
end

function Locale:__tostring()
    return "Locale"
end

-- Helper function for string splitting
function string.split(str, sep)
    local result = {}
    for match in (str .. sep):gmatch("(.-)%s*" .. sep) do
        table.insert(result, match)
    end
    return result
end

-- Export for other resources
_G.Locale = Locale
