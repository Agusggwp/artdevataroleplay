function setMegaphoneTalking(talking)
    TriggerClientEvent('pma-voice:setMegaphoneTalking', -1, source, talking)
end
RegisterNetEvent('pma-voice:setMegaphoneTalking', setMegaphoneTalking)