local g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
g.info = g.data()
g.data = nil
end

if g.info == nil then
g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end

g.info = gg.prompt({
"📂 ʜᴏᴏᴋ ʟᴜᴀ ғᴜɴᴄᴛɪᴏɴ",
"🔥 ʜᴏᴏᴋ ɪsᴘᴀᴄᴋᴀɢᴇɪɴsᴛᴀʟʟ",
"🔥 ʜᴏᴏᴋ ʟᴏᴀᴅғɪʟᴇ",
"🔥 ʜᴏᴏᴋ ᴏs.ᴇxɪᴛ()",
"🔥 ʜᴏᴏᴋ GGmodx",
"🔥 ʜᴏᴏᴋ GGmod",
"🔥 ʜᴏᴏᴋ ᴏs.date",
"❎ ᴇxɪᴛ ʜᴏᴏᴋ",
},g.info,{
"file", -- 1
"checkbox", -- 2
"checkbox",
"checkbox", 
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
})
if g.info == nil then return end

if g.info[2] then
gg.isPackageInstalled = function() end 
loadfile(g.info[1])()
end
---------
if g.info[3] then
Sun = loadfile
loadfile = function() return true end
Sun(g.info[1])()
end
---------
if g.info[4] then
function os.exit() end
loadfile(g.info[1])()
end
---------
if g.info[5] then
Xun = gg.VERSION
gg.VERSION = function() return true end
Xun(g.info[1])()
end
---------
if g.info[6] then
if gg.VERSION return true
loadfile(g.info[1])()
end
---------
if g.info[7] then
function os.date() 
return '20180710' end --- 20500110 or 20180110
loadfile(g.info[1])()
end
---------
if g.info[8] then
print("🔥 ʜᴏᴏᴋ ʟᴜᴀ ᴛᴏᴏʟ ғᴜɴᴄᴛɪᴏɴ @sᴜɴʟᴜᴀɢ 🔥")
os.exit()
end
