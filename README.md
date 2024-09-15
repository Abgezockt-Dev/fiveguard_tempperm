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
    - `playerSource`: The ID of the player for whom the permission should be set.
    - `category`: The category of the permission (e.g., "admin").
    - `permission`: The specific permission type (e.g., "spawn_vehicle").
    - `allow`: A boolean indicating whether to allow (`true`) or deny (`false`) the permission.
    - `ignoreStaticPermission`: If `true`, static permissions are ignored, allowing temporary overrides.

    This script is designed for the server-side and should be placed in the `server.lua` file.
