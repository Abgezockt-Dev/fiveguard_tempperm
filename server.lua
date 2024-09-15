-- Funktion zum Setzen von temporären Berechtigungen für einen Spieler
function SetPlayerTempPermission(playerSource, category, permission, allow, ignoreStaticPermission)
    -- Ruf den Export auf, der temporäre Berechtigungen setzt
    local result, errorText = exports["anticheat-name"]:SetTempPermission(
        playerSource,         -- Spielerquelle
        category,             -- Berechtigungskategorie
        permission,           -- Berechtigungstyp
        allow,                -- True = erlauben, False = verweigern
        ignoreStaticPermission -- True = statische Berechtigungen ignorieren
    )

    -- Überprüfen, ob der Export erfolgreich war
    if result then
        print("Temporäre Berechtigung erfolgreich gesetzt für Spieler: " .. playerSource)
    else
        print("Fehler beim Setzen der temporären Berechtigung: " .. errorText)
    end
end

-- Beispielaufruf der Funktion für einen Spieler
local playerSource = 1 -- Beispiel Spieler-ID
local category = "admin" -- Beispiel Kategorie
local permission = "spawn_vehicle" -- Beispiel Berechtigung
local allow = true -- Berechtigung erteilen
local ignoreStaticPermission = false -- Statische Berechtigungen beachten

SetPlayerTempPermission(playerSource, category, permission, allow, ignoreStaticPermission)
