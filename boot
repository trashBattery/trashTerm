term.clear()
term.setCursorPos(1,1)
local turbo = .5
local osDir = "/trashOS/"
mon = peripheral.find("monitor")
    if (mon ~= nil) then 
        local oldTerm = term.redirect(mon)
            mon.setTextScale(.5)
            term.clear()
            term.setCursorPos(1,10)
            mon.setTextColor(colors.gray)
            write("trashTerm r1.0")
            mon.setTextColor(colors.white)
            term.setCursorPos(1,5)
            mon.setBackgroundColor(colors.blue)
            print("Big")
            sleep(.4)
            mon.setBackgroundColor(colors.lime)
            print("Chungus")
            sleep(.2)
            mon.setBackgroundColor(colors.red)
            write("is ")
            sleep(.2)
            print("Amogus")
            mon.setBackgroundColor(colors.black)
        term.redirect(oldTerm)
        print("Monitor Connected...") 
    else 
        print("No monitor detected...") 
    end
    
    
    sleep(turbo)
disk = peripheral.find("disk")
    if (disk ~= nil) then print("Disk Drive Mounted to /disk/...") else print("Disk drive not detected...") end
    sleep(turbo)
printer = peripheral.find("printer")
    if (printer ~= nil) then print("Printer connected...") else print("No printer detected...") end
    sleep(turbo)
tbCheck = os.loadAPI(osDir.."tbLibs")
    if (tbCheck) then print("tbLibs API loaded...") else print("Failed to mount tbLibs...") end
    sleep(turbo)
term.clear()
term.setCursorBlink(false)
term.setCursorPos(1,1)
sleep(turbo)
print("Have a Shrektacular Day!")