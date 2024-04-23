-- Question 1
local function releaseStorage(player, storageValue)
    player:setStorageValue(storageValue, -1)
end
    
function onLogout(player)
    local logoutStorageKey = 1000
    if player:getStorageValue(logoutStorageKey) == 1 then
        -- assuming addEvent takes function then the function parameters
        addEvent(releaseStorage, player, logoutStorageKey)
        return true
    end
    -- could assert() if the release should always happen
    print(string.format("Failed to release StorageKey %d on logout", logoutStorageKey))
    return false
end
