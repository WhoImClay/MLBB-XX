
-- [LIB]
local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
if lib ~= n then
lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
print("Error "..lib.." Tidak Ditemukan")
print("Code "..lib.." By Attackerz")
gg.toast("Code "..lib.." By Attackerz")
gg.toast("Code "..lib.." By Attackerz")
gg.toast("Code "..lib.." By Attackerz")
gg.toast("Code "..lib.." By Attackerz")
os.exit()
-----------------------Jangan di ubah -----------------------
else
memFrom = ranges[1].start
memTo = ranges[#ranges]["end"]
end
end
end
function hex2tbl(hex)
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
local ret = {}
hex:gsub("%S%S", function (ch)
ret[#ret + 1] = ch
return ""
end)
return ret
end
function original(orig)
local tbl = hex2tbl(orig)
local len = #tbl
if len == 0 then return end
local used = len
if len > lim then used = lim end
local s = ''
for i = 1, used do
if i ~= 1 then s = s..";" end
local v = tbl[i]
if v == "??" or v == "**" then v = "0~~0" end		
s = s..v.."r"
end
s = s.."::"..used
gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
if len > used then
for i = used + 1, len do
local v = tbl[i]
if v == "??" or v == "**" then
v = 256
else
v = ("0x"..v) + 0
if v > 127 then v = v - 256 end
end
tbl[i] = v
end
end
local found = gg.getResultCount();
results = {}
local count = 0
local checked = 0
while true do
if checked >= found then
break
end
local all = gg.getResults(8)
local total = #all
local start = checked
if checked + used > total then
break
end
for i, v in ipairs(all) do
v.address = v.address + myoffset
end
gg.loadResults(all)
while start < total do		
local good = true
local offset = all[1 + start].address - 1
if used < len then			
local get = {}
for i = lim + 1, len do
get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0}
end
get = gg.getValues(get)
for i = lim + 1, len do
local ch = tbl[i]
if ch ~= 256 and get[i - lim].value ~= ch then
good = false
break
end
end
end
if good then
count = count + 1
results[count] = offset
checked = checked + used
else
local del = {}
for i = 1, used do
del[i] = all[i + start]
end
gg.removeResults(del)
end
start = start + used
end
end
	
end
function replaced(repl)
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
num = num + 1
local tbl = hex2tbl(repl)
if src ~= nil then
local source = hex2tbl(src)
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end
end
src = nil
end
local cnt = #tbl
local set = {}
local s = 0
for _, addr in ipairs(results) do
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" then
s = s + 1
set[s] = {
["address"] = addr + i, 
["value"] = v.."r",
["flags"] = gg.TYPE_BYTE,
}
end
end		
end
if s ~= 0 then gg.setValues(set) end
ok = true
end

gg.isVisible(false)
gg.clearResults()
t = gg.getListItems()
gg.removeListItems(t)

libil2cpp = "13073.3740234375;9.219563e-41;3.6734241e-39;1.4012985e-45;4.8808683e-39::25"
libunity = "13073.3740234375;9.219563e-41;3.6734241e-39;1.4012985e-45;7.286752e-44;2.7887936e-38::33"

GameVarDefRS = '00r;00r;50r;40r;33r;33r;B3r;3Fr::8'
GameVarDefRS1 = '71r;3Dr;9Ar;40r;33r;33r;B3r;3Fr::8'
if gg[(nil)("bc c7 c0 cd cf")]("✖CREADO POR DUVAN GAMESYT✖ \n\n" .. "\n↪UNICO SCRIPT ANTIBAN PARA FREE FIRE 1.46.1 ACTUALIZADO↩\n\n↪USALO BAJO TU RESPONSABILIDAD, RECUERDA CUENTA BANEADA NO SE RECUPERA↩\n \n↪SUSCRIBETE A MI CANAL DE YOUTUBE/DUVAN GAMESYT↩\n\n❌QUIERES USARLO❌\n  \n\n", "[ SI ]      ", " [ NO ]      ") ~= 1 then
  os[("✖CREADO POR DUVAN GAMESYT✖ \n\n" .. "\n↪UNICO SCRIPT ANTIBAN PARA FREE FIRE 1.46.1 ACTUALIZADO↩\n\n↪USALO BAJO TU RESPONSABILIDAD, RECUERDA CUENTA BANEADA NO SE RECUPERA↩\n \n↪SUSCRIBETE A MI CANAL DE YOUTUBE/DUVAN GAMESYT↩\n\n❌QUIERES USARLO❌\n  \n\n")("c0 d3 c4 cf")]()
end
function START()
  menu = gg.choice({
    fant .. " MODO FANTASMA👻",
    pie .. " ATRAVESAR PIEDRAS⛰",
    "MENU PERSONAJE👦",
    "MENU DISPAROS🔫",
    "MENU MAPA🌍",
    "MENU ANTIBAN📲",
    "DESBANEO DE CELULAR📱",
    "✖SALIR✖"
  }, nil, " HECHO POR DUVAN GAMESYT ")
  if menu == 1 then
    fantasma()
  end
  if menu == 2 then
    rocas()
  end
  if menu == 3 then
    personajes()
  end
  if menu == 4 then
    disparos()
  end
  if menu == 5 then
    mapa()
  end
  if menu == 6 then
    ban()
  end
  if menu == 7 then
    desban()
  end
  if menu == 8 then
    exit()
  end
  XGCK = -1
end
fant = "《OFF》👻"
function fantasma()
  if fant == "《OFF》👻" then
    gg.loadList(gg.EXT_STORAGE .. "/RevealedSoulEven/SoulEven.log", gg.LOAD_APPEND)
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 21357652
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("Activado")
    fant = "《ON》"
  elseif fant == "《ON》" then
    gg.loadList(gg.EXT_STORAGE .. "/RevealedSoulEven/SoulEven.log", gg.LOAD_APPEND)
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 21357652
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("Desactivado")
    fant = "《OFF》👻"
  end
end
pie = "《OFF》🗿"
function rocas()
  if pie == "《OFF》🗿" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 15673488
    original("7F 45 4C 46 01 01 01 00")
    replaced("C9 3C 8E BF C9 3C 8E BF")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 15673496
    original("7F 45 4C 46 01 01 01 00")
    replaced("C9 3C 8E BF C9 3C 8E BF")
    gg.clearResults()
    gg.toast("Activado")
    gg.setVisible(false)
    pie = "《ON》"
  elseif pie == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 15673488
    original("7F 45 4C 46 01 01 01 00")
    replaced("BD 37 86 35 BD 37 86 35")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 15673496
    original("7F 45 4C 46 01 01 01 00")
    replaced("BD 37 86 35 BD 37 86 35")
    gg.clearResults()
    gg.toast("Desactivado")
    gg.setVisible(false)
    pie = "《OFF》🗿"
  end
end
function personajes()
  A = gg.multiChoice({
    atena1 .. "ANTENA CABEZA📡",
    antena2 .. "ANTENA ARMA🔭",
    botim .. "BOTIQUIN EN MOVIMIENTO🚶‍♂️",
    "BOTIQUIN 3 SEGUNDOS💞",
    "CUERPOS BLANCOS👻",
    "🔙ATRAS"
  }, nil, "MENU PERSONAJE BY DUVAN GAMESYT")
  if A == nil then
  else
    if A[1] == true then
      Antena()
    end
    if A[2] == true then
      anthan()
    end
    if A[3] == true then
      botimm()
    end
    if A[4] == true then
      boti()
    end
    if A[5] == true then
      cb()
    end
    if A[6] == true then
      START()
    end
  end
  XGCK = -1
end
atena1 = "《OFF》"
function Antena()
  if atena1 == "《OFF》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5.9762459e-7;1::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("5.9762459e-7;250.1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("7.5538861e-7;1::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("7.5538861e-7;250.1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Activado")
    gg.setVisible(false)
    atena1 = "《ON》"
  elseif atena1 == "《ON》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("250.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Desactivado")
    gg.setVisible(false)
    atena1 = "《OFF》"
  end
end
antena2 = "《OFF》"
function anthan()
  if antena2 == "《OFF》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1;3.2404066e-7::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("250.1;3.2404066e-7", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-0.39830258489;1;0.5870424509::9", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("-0.39830258489;250.1;0.5870424509", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Activado")
    gg.setVisible(false)
    antena2 = "《ON》"
  elseif antena2 == "《ON》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("250.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Desactivado")
    gg.setVisible(false)
    antena2 = "《OFF》"
  end
end
botim = "《OFF》"
function botimm()
  if botim == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 34822248
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0  E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10980752
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0  E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("Activado")
    botim = "《ON》"
  elseif botim == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 34822248
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4B 2D E9 18 B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10980752
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("Desactivado")
    botim = "《OFF》"
  end
end
function boti()
  gg.setRanges(48)
  gg.searchNumber("4;0;4.2038954e-45::9", 16)
  gg.getResults(1)
  gg.editAll("3", 16)
  gg.clearResults()
  gg.toast("Activado")
  gg.setVisible(false)
  gg.setVisible(false)
end
function cb()
  gg.loadList(gg.EXT_STORAGE .. "/RevealedSoulEven/SoulEven.log", gg.LOAD_APPEND)
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 10868400
  original("7F 45 4C 46 01 01 01 00")
  replaced("01 00 A0 E3 1E FF 2F E1")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 26384684
  original("7F 45 4C 46 01 01 01 00")
  replaced("00 00 BB E3 1E FF 2F E1")
  gg.clearResults()
  gg.clearResults()
  gg.toast("Activado")
end
function disparos()
  B = gg.multiChoice({
    "MIRA BLANCA⚪",
    "CARGADOR AMPLIADO♾",
    "HEADSHOT💀",
    "QUITAR LAG EN EL DISPARO💨",
    "AUTO APUNTADO🔫",
    Snsbd .. "AUMENTAR SENSIBILIDAD📱",
    "VELOCIDAD DE DISPARO⚡",
    "🔙ATRAS"
  }, nil, "MENU DISPAROS BY DUVAN GAMESYT")
  if B == nil then
  else
    if B[1] == true then
      mira()
    end
    if B[2] == true then
      infi()
    end
    if B[3] == true then
      lluvia()
    end
    if B[4] == true then
      lag1()
    end
    if B[5] == true then
      am()
    end
    if B[6] == true then
      sn()
    end
    if B[7] == true then
      vel()
    end
    if B[8] == true then
      START()
    end
  end
  XGCK = -1
end
function mira()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("\0000.5;0.5;0.84705883265::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("\0000.5;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Activado")
  gg.setVisible(false)
  gg.setVisible(false)
end
function infi()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6D;.4;.4;5;10::65", 16)
  gg.getResults(100)
  gg.editAll("12", 4)
  gg.clearResults()
  gg.searchNumber("30D;.18;.18;220~225;40;90::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("30D;.11;.11;220~225;13;30::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("20D;.07;.07;220~225;11;25::65", 16)
  gg.getResults(100)
  gg.editAll("35", 4)
  gg.clearResults()
  gg.searchNumber("30D;.15;.15;220~225;30;70::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("30D;.18.18;220~225;38;85::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("30D;.09;.09;220~225;16;34::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("30D;.12;.15;220~225;38;80::65", 16)
  gg.getResults(100)
  gg.editAll("50", 4)
  gg.clearResults()
  gg.searchNumber("100D;.16;.16;220~225;45;80::65", 16)
  gg.getResults(100)
  gg.editAll("120", 4)
  gg.clearResults()
  gg.searchNumber("5D;.33;.33;25;4;20::65", 16)
  gg.getResults(100)
  gg.editAll("12", 4)
  gg.clearResults()
  gg.searchNumber("50D;.09;.09;220~225::21", 16)
  gg.getResults(100)
  gg.editAll("65", 4)
  gg.clearResults()
  gg.toast("Activado")
end
function lluvia()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0000B040rA;0000803FrA;0000403FrA:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("1,085,276,160;0;0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("CARGANDO🔥")
  gg.loadList(gg.EXT_STORAGE .. "/RevealedSoulEven/SoulEven.log", gg.LOAD_APPEND)
  gg.setRanges(gg.REGION_CODE_APP)
  name("libil2cpp.so")
  myoffset = 30667008
  original("7F 45 4C 46 01 01 01 00")
  replaced("10 00 A0 E3 1E FF 2F E1")
  gg.clearResults()
  gg.toast("Activado")
end
function lag1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 30706336
  original("7F 45 4C 46 01 01 01 00")
  replaced("12 00 A0 E3 1E FF 2F E1")
  gg.clearResults()
  gg.toast("Activado")
end
function am()
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 30665456
  original("7F 45 4C 46 01 01 01 00")
  replaced("79 04 44 E3")
  gg.clearResults()
  gg.toast("Activado")
end
Snsbd = "《OFF》"
function sn()
  if Snsbd == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 11002992
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 7A 43")
    gg.clearResults()
    gg.toast("Activado")
    Snsbd = "《ON》"
  elseif Snsbd == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 11002992
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 96 43")
    gg.clearResults()
    gg.toast("Activado")
    Snsbd = "《OFF》"
  end
end
function vel()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 30648052
  original("7F454C4601010100")
  gg.clearResults()
  n = gg.prompt({
    "Fast Shot [2;20]"
  }, {2}, {"number"})
  if n == nil then
    gg.clearResults()
    gg.setVisible(false)
  else
    Hex = string[ret("c1 ca cd c8 bc cf")]("%X", n[1])
    if string[ret("c7 c0 c9")](Hex) == 1 then
      Hex = "0" .. Hex
    end
    replaced(Hex .. "00A0E31EFF2FE1")
    gg.clearResults()
    gg.setVisible(false)
  end
end
function mapa()
  C = gg.multiChoice({
    noc .. "MODO NOCTURNO🌃",
    Gra .. "REMOVER GRAMA🌱",
    Mdhd .. "MAPA HD🏞",
    Av .. "ELIMINAR ARBOLES🌳",
    "🔙ATRAS"
  }, nil, "MENU MAPA BY DUVAN GAMESYT")
  if C == nil then
  else
    if C[1] == true then
      c1()
    end
    if C[2] == true then
      c3()
    end
    if C[3] == true then
      c4()
    end
    if C[4] == true then
      c6()
    end
    if C[5] == true then
      START()
    end
  end
  XGCK = -1
end
noc = "《OFF》"
function c1()
  if noc == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 1712768
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 80 BF")
    gg.clearResults()
    gg.toast("Activado")
    gg.setVisible(false)
    noc = "《ON》"
  elseif noc == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libunity.so")
    myoffset = 1712768
    original("7F 45 4C 46 01 01 01 00")
    replaced("BD 37 86 35")
    gg.clearResults()
    gg.toast("Desactivado")
    gg.setVisible(false)
    noc = "《OFF》"
  end
end
Gra = "《OFF》"
function c3()
  if Gra == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("8.4077908e-45;100;300::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("-1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setVisible(false)
    Gra = "《ON》"
  elseif Gra == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("8.4077908e-45;-1;300::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("100", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Desactivado")
    gg.setVisible(false)
    Gra = "《OFF》"
  end
end
Mdhd = "《OFF》"
function c4()
  if Mdhd == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 40229956
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0  E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("Activado")
    Mdhd = "《ON》"
  elseif Mdhd == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 40229956
    original("7F 45 4C 46 01 01 01 00")
    replaced("30 48 2D E9 08 B0 8D E2")
    gg.clearResults()
    gg.toast("Desactivado")
    Mdhd = "《OFF》"
  end
end
Av = "《OFF》"
function c6()
  if Av == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 19986936
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 80 BF")
    gg.clearResults()
    gg.toast("Activado")
    Av = "《ON》"
  elseif Av == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 19986936
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 70 42")
    gg.clearResults()
    gg.toast("Desactivado")
    Av = "《OFF》"
  end
end
function ban()
  menuch4 = gg.multiChoice({
    "NO REPORTES🗳",
    "ELIMINAR REPORTES📤",
    "🔙ATRAS"
  }, nil, "MENU ANTI BAN BY DUVAN GAMESYT")
  if menuch4 == nil then
  else
    if menuch4[1] == true then
      no()
    end
    if menuch4[2] == true then
      no1()
    end
    if menuch4[3] == true then
      START()
    end
  end
  XGCK = -1
end
function no()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("R_R({800C90C0rD;7A01A801rD;58011B01rD;39016001rD;7101A901rD;FC013402rD;7402D902rD;19032203rD;5103D003rD;46044E04rD;FB03DC03rD;38046804rD;CB030503rD;FF024003rD;D102FF01rD;AC01C901rD;C0016901rD;E8006200rD;F6FF7EFFrD;B4FEC4FDrD:4089})", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("R_R({8})", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(73, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("R_R({192,158,121})", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("R_R({1,6,7,8,9,0,0,6,6,7,7,10,7,777,10})", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("R_R({61})", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(40, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("R_R({192,158,121})", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Activado")
end
function no1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 2195501056, 2238693376)
  gg.getResultsCount()
  gg.clearResults()
  gg.toast("Activar dentro de cada partida para que funcione!")
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 2195501056, 2238693376)
  gg.getResultsCount()
  gg.clearResults()
  gg.toast("Activado")
end
function desban()
  D = gg.multiChoice({
    Imeig .. "DESBANEAR IMEI📱",
    Meidv .. "DESBANEAR MEID📲",
    Serild .. "DESBANEAR SERIAL📱",
    "ELIMINAR CUENTA BANEADA🗑",
    "🔙ATRAS"
  }, nil, "MENU ANTIBAN BY DUVAN GAMESYT")
  if D == nil then
  else
    if D[1] == true then
      d1()
    end
    if D[2] == true then
      d2()
    end
    if D[3] == true then
      d3()
    end
    if D[4] == true then
      d4()
    end
    if D[5] == true then
      START()
    end
  end
  XGCK = -1
end
Imeig = "《OFF》"
function d1()
  if Imeig == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225540
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    Imeig = "《ON》"
  elseif Imeig == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225540
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    Imeig = "《OFF》"
  end
end
Meidv = "《OFF》"
function d2()
  if Meidv == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225812
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    Meidv = "《ON》"
  elseif Meidv == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225812
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    Meidv = "《OFF》"
  end
end
Serild = "《OFF》"
function d3()
  if Serild == "《OFF》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225268
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    Serild = "《ON》"
  elseif Serild == "《ON》" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 25225268
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    Serild = "《OFF》"
  end
end
function d4()
  os.remove("/storage/emulated/0/com.garena.msdk/guest100067.dat")
  os.remove("/storage/emulated/0/com.garena.msdk")
  gg.toast("Eliminada")
end
function exit()
  gg.setVisible(true)
  print(os.date("📅 %A %d %B %Y\n🕐 %H:%M:%S\n  ﹃﹄﹃﹄⚡Susribete a canal de YT/Duvan GamesYT⚡ ﹃﹄﹃﹄"))
  os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db", gg.LOAD_APPEND)
  os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt", gg.LOAD_APPEND)
  os.remove(gg.EXT_STORAGE .. "/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ")
  os.exit()
end
while "c4 ce b1 c4 ce c4 bd c7 c0" do
  repeat
    repeat
      do break end
      do break end
      XGCK = 1
      gg[(true)("ce c0 cf b1 c4 ce c4 bd c7 c0")](((true)("ce c0 cf b1 c4 ce c4 bd c7 c0")))
    until true
  until true
  if XGCK == 1 then
    START()
  end
end
function back()
  XGCK = 1
  START()
end
