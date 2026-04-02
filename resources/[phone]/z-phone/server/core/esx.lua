if Config.Core == "ESX" then 
    xCore = {}
    local ESX = exports["es_extended"]:getSharedObject()
    local ox_inventory = exports.ox_inventory

    xCore.GetPlayerBySource = function(source)
        local ply = ESX.GetPlayerFromId(source)
        if not ply then 
            return nil 
        end

        -- Safely get money accounts
        local moneyAcc = ply.getAccount('money')
        local bankAcc = ply.getAccount('bank')
        local cashAmount = (moneyAcc and moneyAcc.money) or 0
        local bankAmount = (bankAcc and bankAcc.money) or 0
        
        -- Safely get job info
        local job = ply.getJob()
        local jobName = (job and job.name) or 'unemployed'
        local jobLabel = (job and job.label) or 'Unemployed'

        return {
            source = ply.source,
            citizenid = ply.identifier,
            name = ply.getName(),
            job = {
                name = jobName,
                label = jobLabel
            },
            money = {
                cash = cashAmount,
                bank = bankAmount,
            },
            removeCash = function (amount)
                ply.removeMoney(amount)
            end,
            removeAccountMoney = function (account, amount, reason)
                ply.removeAccountMoney(account, amount)
            end,
            addAccountMoney = function (account, amount, reason)
                ply.addAccountMoney(account, amount)
            end
        }
    end

    xCore.GetPlayerByIdentifier = function(identifier)
        local ply = ESX.GetPlayerFromIdentifier(identifier)
        if not ply then return nil end

        -- Safely get money accounts
        local moneyAcc = ply.getAccount('money')
        local bankAcc = ply.getAccount('bank')
        local cashAmount = (moneyAcc and moneyAcc.money) or 0
        local bankAmount = (bankAcc and bankAcc.money) or 0
        
        -- Safely get job info
        local job = ply.getJob()
        local jobName = (job and job.name) or 'unemployed'
        local jobLabel = (job and job.label) or 'Unemployed'

        return {
            source = ply.source,
            citizenid = ply.identifier,
            name = ply.getName(),
            job = {
                name = jobName,
                label = jobLabel
            },
            money = {
                cash = cashAmount,
                bank = bankAmount,
            },
            removeCash = function (amount)
                ply.removeMoney(amount)
            end,
            removeAccountMoney = function (account, amount, reason)
                ply.removeAccountMoney(account, amount)
            end,
            addAccountMoney = function (account, amount, reason)
                ply.addAccountMoney(account, amount)
            end
        }
    end

    xCore.HasItemByName = function(source, item)
        local invItem = ox_inventory:GetItem(source, item, nil, false)
        if not invItem then
            return false
        end
        return (invItem.count and invItem.count >= 1) or false
    end

    xCore.AddMoneyBankSociety = function(society, amount, reason)
        -- I DONT KNOW MUCH ABOUT ESX, SORRY
        lib.print.info("TODO ADD MONEY TO YOUR SOCIETY")
    end
    
    xCore.queryPlayerVehicles = function()
        -- state
        -- 1 = Garaged
        -- 2 = Impound
        -- 3 = Outside
        -- defaukl = Outside

        -- ADJUST QUERY FROM YOUR TABLE VEHICLE
        local query = [[
            select 
                "default" as vehicle,
                v.plate,
                COALESCE(v.garage, 'Police Station') as garage,
                100 as fuel,
                100 as engine,
                100 as body,
                COALESCE(v.stored, 0) as state,
                DATE_FORMAT(now(), '%d %b %Y %H:%i') as created_at
            from owned_vehicles v WHERE v.owner = ? order by plate asc
        ]]

        return query
    end

    xCore.queryPlayerHouses = function()
        -- ADJUST QUERY FROM YOUR TABLE HOUSING
        local query = [[
        SELECT 
                hl.id,
                hl.name, 
                0 as tier,
                null as coords,
                0 as is_has_garage, 
                1 AS is_house_locked, 
                1 AS is_garage_locked, 
                1 AS is_stash_locked, 
                '[]' as keyholders 
            FROM 
                datastore_data hl 
            WHERE hl.owner = ? and hl.name = 'property'
            ORDER BY hl.id DESC
        ]]

        return query
    end

    xCore.bankHistories = function(citizenid)
        -- type = withdraw or deposit (lowercase)
        -- Return empty histories as banking transaction table may not exist in this server
        -- You can customize this query based on your actual banking system
        return {}
    end

    xCore.bankInvoices = function(citizenid)
        local query = [[
            select
                pi.id,
                pi.target as society,
                pi.label as reason,
                pi.amount,
                pi.sender as sendercitizenid,
                DATE_FORMAT(now(), '%d/%m/%Y %H:%i') as created_at
            from billing as pi
            where pi.identifier = ? order by pi.id desc
        ]]

        local bills = MySQL.query.await(query, { citizenid })
        if not bills then
            bills = {}
        end

        return bills
    end

    xCore.bankInvoiceByCitizenID = function(id, citizenid)
        local query = [[
            select pi.id, pi.amount, pi.label as reason, pi.target as society, pi.amount from billing pi WHERE pi.id = ? and pi.identifier = ? LIMIT 1
        ]]

        return MySQL.single.await(query, {id, citizenid})
    end

    xCore.deleteBankInvoiceByID = function(id)
        local query = [[
            DELETE FROM billing WHERE id = ?
        ]]

        MySQL.query(query, { id })
    end
end