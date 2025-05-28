#include <amxmodx>
#include <hamsandwich>

public plugin_init() {
    register_plugin("Round Start Command", "1.0", "You")
    RegisterHam(Ham_Spawn, "player", "OnPlayerSpawn", 1) // Runs on spawn (round start)
}

public OnPlayerSpawn(id) {
    if (!is_user_alive(id)) 
        return PLUGIN_CONTINUE
    
    // Run your command here (example: restart round if < 5 players)
    new players = get_playersnum()
    if (players > 0) {
        server_cmd("amx_parachute @all") // Restart round
    }
    
    return PLUGIN_CONTINUE
}