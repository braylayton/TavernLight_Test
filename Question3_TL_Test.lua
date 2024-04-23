-- Question 3
function removeMemberFromParty(playerId, membername)
    local player = Player(playerId)
    local party = player:getParty()
    for k,v in pairs(party:getMembers()) do
        if v == Player(membername) then
            party:removeMember(v)
        end
    end
end