local pastebin = "/rom/programs/http/pastebin.lua"
local osDir = "/trashOS/"

print(fs.exists("/startup.lua"))
fs.delete("/startup.lua")
fs.delete(osDir.."installer.lua")
fs.delete(osDir.."tbLibs")
fs.delete(osDir.."README")

shell.run(pastebin,"get","JyjAMxxW","/startup.lua")
shell.run(pastebin,"get","4GH2ctnt",osDir.."boot")
shell.run(pastebin,"get","Suy4jpCh",osDir.."tbLibs")
shell.run(pastebin,"get","9JGM1awd",osDir.."installer.lua")
shell.run(pastebin,"get","UBmSANCT",osDir.."update.lua")
shell.run(pastebin,"get","wnhLAiYz",osDir.."README")
print()
print("Update complete. Rebooting...")
sleep(2)
os.reboot()