//Q4 - Assume all method calls work fine. Fix the memory leak issue in below method

void Game::addItemToPlayer(const std::string& recipient, uint16_t itemId)
{
    Player* player = g_game.getPlayerByName(recipient);
    if (!player) 
    {
        return false;
    }

    // removing the code below. I don't believe the player should be instantiated within this function
    /*
    if (!player) 
    {
        player = new Player(nullptr);
        if (!IOLoginData::loadPlayerByName(player, recipient)) 
        {
            return;
        }
    }

    delete(player);
    player = nullptr
    */
    // Create Item could also be somewhere else and Instead we could just add the ItemID to the players inventory
    Item* item = Item::CreateItem(itemId);
    if (!item) 
    {
        return false;
    }

    g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT);
    if (player->isOffline()) 
    {
        IOLoginData::savePlayer(player);
    }
    return true;
}
