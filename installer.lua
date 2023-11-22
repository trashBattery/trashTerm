term.clear()
term.setCursorPos(1,1)
print("This software will install the")
print("trashTerm theme to the current device")
print("in 15 seconds...")
print("=====")
print()
print("Press CTRL+T to abort")
sleep(1)
--Make OS Directory
local osDir = "/trashOS/"
if fs.exists(osDir) then
    fs.delete(osDir)
end
fs.makeDir(osDir)
--Check and install Startup.lua to root
if fs.exists("/startup.lua") then 
    if fs.exists("/startup.lua.tbOld") then
        fs.delete("/startup.lua.tbOld")
    end
    print("!!Renaming your existing startup.lua to startup.lua.tbOld")
    fs.move("/startup.lua","/startup.lua.tbOld") 
end
fs.copy("/disk/startup.lua", "/startup.lua")
--Copy Dependencies to OS Directory
fs.copy("/disk/tbLibs", osDir.."tbLibs")
fs.copy("/disk/update.lua",osDir.."update.lua")
os.reboot()