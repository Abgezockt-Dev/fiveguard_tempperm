# fiveguard_tempperm


    File: server.lua

    Explanation:
    This script is intended to be used on the **server-side** in FiveM. 
    The reason for this is that actions involving setting permissions for players 
    (especially in the context of an anti-cheat system) should occur on the server to prevent 
    manipulation from the client. 

    Typically, permission handling, security, and anti-cheat mechanisms are controlled server-side 
    to ensure the integrity of the system. Server-side scripts have authority over player actions 
    and can communicate with client scripts to enforce rules or permissions securely.

    The function `SetPlayerTempPermission` calls the `SetTempPermission` export from 
    the anti-cheat system and allows temporary permissions to be set or removed for players.

    Parameters:
playerSource: The player handle
category: Permission Category (example: Client or AdminMenu)
permission: Permission (example: AdminMenuAccess for AdminMenu or BypassSuperJump for Client)
allow: true or false | default: false
ignoreStaticPermission: ignores static permission (setting it on true will ignore permissions already made in ace or alternative permissions)

    This script is designed for the server-side and should be placed in the `server.lua` file.
