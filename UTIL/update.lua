-- USED TO USE PASTEBIN, RE-CODE TO USE GITHUB VIA /GRD/GITHUB

--[[

local pastebin = "/rom/programs/http/pastebin.lua"
local osDir = "/trashTerm/"

print(fs.exists("/startup.lua"))
fs.delete("/startup.lua")
fs.delete(osDir.."installer.lua")
fs.delete(osDir.."tbLibs")
fs.delete(osDir.."README")

print()
print("Update complete. Rebooting...")
sleep(2)
os.reboot()

]]--