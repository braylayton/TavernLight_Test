-- Question 2
function printSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))

    -- Iterate through the guildnames that are smaller then memberCount
    local tmpResultId = resultId
    while tmpResultId ~= false do
        local guildName = result.getString(resultId,"name")
        print(guildName)
        tmpResultId = result.next(resultId)
    end

    if resultId ~= false then
		result.free(resultId)
	end
end
