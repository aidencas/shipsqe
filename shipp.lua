--function fly_hack()
--local m = gg.choice{"fly 1","fly 2","fly 3","fly all"),nil,"Fly hack method")
--if m==1 then fly_1() end
--if m==2 then fly_2() end
--if m==3 then fly_3() end

--if m==4 then fly_1() fly_2() fly_3() end
--if m==nil then home() end
--end

--function fly_1()
--gg.alert("1")
--end

--function fly_2()
--gg.alert("2")
--end﻿

--function fly_3()
--gg.alert("3")
--end
--local Passwords = {"TG","NIKA","TGN"} -- write all your choosen passwords in this tab .
--local Menu = gg.prompt({"Select Password :"},nil,{"text"})
--if not Menu then return end
--for l , I in pairs(Passwords) do
--if Menu[1] == I then A = true end
--end
--if A ~= true then gg.alert("⚠ Error Password⚠ ") return else gg.toast("✅ Correct Password !") end



---local n = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [1; 3]'}, {1}, {'number'})

---if n == n[1] then DevKey()end

---gg.editAll(n[1],gg.TYPE_FLOAT)

---function addstring(...)

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
---function RGD() end
---function setvalue(address,flags,value) RGD('Modify address value (address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

---local Passwords = {"1","2","3"} -- write all your choosen passwords in this tab .
---local Menu = gg.prompt({"Select Password :"},nil,{"text"})
---if not Menu then return end
---for l , I in pairs(Passwords) do
---if Menu[1] == Passwords[1] then gg.alert("Done") end
---if Menu[1] == Passwords[2] then Bypass9()end
---if Menu[1] == Passwords[3] then DevKey()end

---m = gg.alert("Done")
---gg.prompt ("C = The value is '.m.'")
---a = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [5000; 15000]'}, {10000}, {'number'})

function HOME()
menu = gg.multiChoice({
 "[🇳] Plane Ammo",
 "[🇨🇳] Damage 0.3m",
 "[🇨🇳] Max RPM",
 "[🇨🇳] Ammo 74B",
 "[🛫] Flap Spitfire",
 "[🛫] Flap Zero",
 "[🇨🇳] Ammo Jet Jerman",
 "[🇨🇳] Max RPM jet jerman",
 "[✈️] 1 Click Engine",
 "[🚀] 1 Click Ammo",
 "[🖥️] DevKey", 
       "Damage All Cal",
 "[🇨🇳] Damage 20MM",
 "[🇨🇳] One Click \nJP or US",
 "[🇨🇳] Wing Value Test All",
 "[🇨🇳] Wing Special For BF-102",
 "[🇨🇳] Wing Special For BF-109",
 "[🇨🇳] Test All Wing",
 "Flap B_109",
 "All RPM TEST",
 "One Click For Mod",
},nil, "• Develop : Owlin \n☕Project Owl Everyday☕ \n  BY ME AND FOR YOU")
if menu == nil then else
if menu[1] == true then Bypass()end
if menu[2] == true then Bypass1()end
if menu[3] == true then Bypass2() allwing() Bypass1() allrpm()end
if menu[4] == true then Bypass3()end
if menu[5] == true then Bypass4()end
if menu[6] == true then Bypass5()end
if menu[7] == true then Bypass6()end
if menu[8] == true then Bypass7()end
if menu[9] == true then Bypass2() Bypass4()end
if menu[10] == true then BYPS01() BYPS02() BYPS03() BYPS04() BYPS05() BYPS06() BYPS07() BYPS08() BYPS09() BYPS10() Bypass3() am() am1() am2() am3()end
if menu[11] == true then DevKey()end
if menu[12] == true then dm50cal() dm20mm() Bypass1() dm79mm()end
--dm13mmjp()
if menu[13] == true then dm20mm()end
if menu[14] == true then oneclick()end
if menu[15] == true then wingspitfire() wingp47n() wingfinalzero()end
if menu[16] == true then winggrmbf109()end
if menu[17] == true then wingbf109()end
if menu[18] == true then allwing()end
if menu[19] == true then flapbf()end
if menu[20] == true then allrpm()end
if menu[21] == true then Bypass1() allwing() allrpm()end
end
PUBGM= -1
end

function flapbf()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "plnmuo"},
{["value"] = 0.25, ["type"] = 16},
{["lv"] = 0.019999999552965164, ["offset"] = 4, ["type"] = 16},
{["lv"] = 6.0, ["offset"] = 32, ["type"] = 16},
}
local n = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [20; 50]'}, {23}, {'number'}) if n == nil then return end
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = n[1], ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "MuztangAmmo"},
{["value"] = 2.8025969e-43, ["type"] = 16},
{["lv"] = 500, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999732, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)


--1200;500;0.05000000075;0.11999999732
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Bf109Ammo"},
{["value"] = 1.4012985e-42, ["type"] = 16},
{["lv"] = 1200, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.05000000075, ["offset"] = 16, ["type"] = 16},
{["lv"] = 99999, ["offset"] = 176, ["type"] = 16},
{["lv"] = 500, ["offset"] = 184, ["type"] = 16},
{["lv"] = -99999, ["offset"] = 192, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
--{["value"] = 99999, ["offset"] = 176, ["type"] = 16},
--{["value"] = 0, ["offset"] = 192, ["type"] = 16},
}
xqmnb(qmnb)




end

function allrpm()
gg.clearResults()
gg.searchNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.sleep(3000)
gg.refineNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
p = gg.getResultCount()                -- saving the results count
q = gg.getResults(p)                   -- saving the results

-- using loop to edit the values at offset one by one

for i = 1,p do
          local  r = {}
			r[i] = {}
			        r[i].address = q[i].address + 16   -- address the offset(ex :- 4) to the refined result
				    r[i].flags = 4                 -- data type in which you want to edit the value at offset (4 = DWORD)
					r[i].value = 0
					---15000                -- enter the edit value to make the hack
gg.setValues(r)
end
end

function allwing()

--[[gg.clearResults()
gg.setVisible(true)
gg.searchNumber("0.5;5;1;-7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.sleep(3000)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)

u = gg.getResultCount()
p = gg.getResults(u)

local q = {
  { -- Make another table to modified other address.
    address = p[1].address + 76, -- Offset
    flags = gg.TYPE_FLOAT,
    value = -15000 ---MAX SPEED
  }
}
gg.setValues(q)
--]]

gg.clearResults()
gg.searchNumber("0.5;5;1;-7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.sleep(3000)
gg.refineNumber("-7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
p = gg.getResultCount()                -- saving the results count
q = gg.getResults(p)                   -- saving the results

-- using loop to edit the values at offset one by one

for i = 1,p do
          local  r = {}
			r[i] = {}
			        r[i].address = q[i].address - 16   -- address the offset(ex :- 4) to the refined result
				    r[i].flags = 16                 -- data type in which you want to edit the value at offset (4 = DWORD)
					r[i].value = -40000
					---15000                -- enter the edit value to make the hack
gg.setValues(r)
end
end

function Bypass()
BYPAS = gg.multiChoice({
    "⚡ Ammo SpitFire",
    "⚡ Ammo Zero",
    "⚡ Ammo Zero Canon",
    "⚡ Ammo 40mm Hurricane",
    "⚡ Ammo b17 1000",
    "⚡ Ammo b17 2000",
    "⚡ Ammo P40",
    "<I{•----» 𝐁𝐀𝐂𝐊 «----•}I>"
}, nil, (os.date("• Develop : TryHard 🇨🇳\n 🇮🇩\n📅 %A, %d %B %Y %H:%M%p")))
  if BYPAS == nil then
  else
    if BYPAS[1] == true then
      BYPS01()
    end
    if BYPAS[2] == true then
      BYPS02()
    end
    if BYPAS[3] == true then
      BYPS03()
    end
    if BYPAS[4] == true then
      BYPS04()
    end
    if BYPAS[5] == true then
      BYPS05()
    end
    if BYPAS[6] == true then
      BYPS06()
    end
    if BYPAS[7] == true then
      BYPS07()
    end
    if BYPAS[8] == true then
      HOME()
    end
    PUBGM= -1
  end
end

function wingspitfire()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -5500.0, ["offset"] = 76, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = -15000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

function wingfinalzero() ---Zero And German BF-109
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -6000.0, ["offset"] = 76, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = -15000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

function wingp47n()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -7500.0, ["offset"] = 76, ["type"] = 16},
--{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
--{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["value"] = -20000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

function wing109g2()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -7500.0, ["offset"] = 76, ["type"] = 16},
--{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
--{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["value"] = -20000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

function BYPS01()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "cwpopln"},
{["value"] = 1.961817850054744E-42, ["type"] = 16},
{["lv"] = 600.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 500000000, ["offset"] = 0, ["type"] = 16},
--{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -5000, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)


gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Spitfire mkvb"},
{["value"] = 1.9618179e-42, ["type"] = 16},
{["lv"] = 800, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99998, ["offset"] = 0, ["type"] = 16},
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)

--6.7262326e-43
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Ammo 20mm SpitFire"},
{["value"] = 480, ["type"] = 4},
{["lv"] = 700, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.08571428806, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "FlakUs"},
{["value"] = 7.0064923e-43, ["type"] = 16},
{["lv"] = 120, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 0.01, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "corsIrAmmo"},
{["value"] = 3.3631163e-42, ["type"] = 16},
{["lv"] = 800, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "MuztangAmmo"},
{["value"] = 2.6344411e-42, ["type"] = 16},
{["lv"] = 800, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Bomb b17"},
{["value"] = 2.8025969e-44, ["type"] = 16},
{["lv"] = 2.8025969e-44, ["offset"] = -4, ["type"] = 16},
{["lv"] = 7.5, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
--{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
--{["value"] = 99999, ["offset"] = -4, ["type"] = 16},
{["value"] = 0, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS02()
--[[
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "AmmoZero1000"},
{["value"] = 1000, ["type"] = 4},
{["lv"] = 500, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999732, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
--]]

gg.clearResults()

qmnb = {
{["memory"] = 32},
{["name"] = "AmmoZero1"},
{["value"] = 200, ["type"] = 4},
{["lv"] = 500, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999732, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()

--[[
gg.clearResults()
r = {"4","8","16"}
gg.searchNumber("500;0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.sleep(3000)
gg.refineNumber("500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
p = gg.getResultCount()                -- saving the results count
q = gg.getResults(p)                   -- saving the results

-- using loop to edit the values at offset one by one

for i = 1,p do
          local  r = {}
			r[i] = {}
			        r[i].address = q[i].address + 76   -- address the offset(ex :- 4) to the refined result
				    r[i].flags = 16                 -- data type in which you want to edit the value at offset (4 = DWORD)
					r[i].value = -15000                -- enter the edit value to make the hack
gg.setValues(r)
end
--]]
end


function BYPS03()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "klkensjwjdb"},
{["value"] = 2.802596928649634E-43, ["type"] = 16},
{["lv"] = 500.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999731779099, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 50000000000, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -500000000000, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS04()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "40mmhurricane"},
{["value"] = 4.203895392974451E-44, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.6000000238418579, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS05()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "b100017"},
{["value"] = 1.401298464324817E-42, ["type"] = 16},
{["lv"] = 800.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298023224, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -9999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS06()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "kskskjd"},
{["value"] = 2.802596928649634E-42, ["type"] = 16},
{["lv"] = 800.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298023224, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS07()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jajsjejpoi"},
{["value"] = 2.802596928649634E-42, ["type"] = 16},
{["lv"] = 600.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS08()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "grm20000"},
{["value"] = 3.783505853677006E-43, ["type"] = 16},
{["lv"] = 500.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999731779099, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS09()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "grm30"},
{["value"] = 8.407790785948902E-43, ["type"] = 16},
{["lv"] = 900.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.06666667014360428, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function BYPS10()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "grm30real"},
{["value"] = 9.10844001811131E-44, ["type"] = 16},
{["lv"] = 500.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.11999999731779099, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 800, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function am()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "hayaayt"},
{["value"] = 8.407790785948902E-43, ["type"] = 16},
{["lv"] = 850.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07058823853731155, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 1000, ["offset"] = 8, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function am1()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "77(#+"},
{["value"] = 9.80908925027372E-43, ["type"] = 16},
{["lv"] = 800.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298023224, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},
{["value"] = 1000, ["offset"] = 8, ["type"] = 16},
{["value"] = -9999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function am2()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "mustang50cal"},
{["value"] = 2.634441112930656E-42, ["type"] = 16},
{["lv"] = 800.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298023224, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},
{["value"] = 1000, ["offset"] = 8, ["type"] = 16},
{["value"] = -9999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function am3()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "7.9Germbf109"},
{["value"] = 1.401298464324817E-42, ["type"] = 16},
{["lv"] = 1200.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.05000000074505806, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = -99999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function Bypass1()
------- 64 Bit Offset 20
------- 32 Bit Offser 12
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "13mmdmg"},
{["value"] = 850.0, ["type"] = 16},
--{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 49.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
--{["value"] = 1, ["offset"] = 8, ["type"] = 4},
{["value"] = 5000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
--[[
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "50caldmg"},
{["value"] = 820.0, ["type"] = 16},
--{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 100.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
{["value"] = 6000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
--]]
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "20mmDamage"},
{["value"] = 650.0, ["type"] = 16},
--{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 180.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
--{["value"] = 1, ["offset"] = 8, ["type"] = 4},
{["value"] = 8000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

---1200

function Bypass2()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "cwieew"},
{["value"] = 2800.0, ["type"] = 16},
{["lv"] = 700.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 24, ["type"] = 16},
}
---{["lv"] = 100.0, ["offset"] = 204, ["type"] = 16},
---{["lv"] = 100.0, ["offset"] = 208, ["type"] = 16},
---{["lv"] = 1.0, ["offset"] = 192, ["type"] = 16},
---{["lv"] = 750.0, ["offset"] = 196, ["type"] = 16},
---{["lv"] = 750.0, ["offset"] = 200, ["type"] = 16},
local n = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [5000; 15000]'}, {10000}, {'number'}) if n == nil then return end

---gg.editAll(n[1],gg.TYPE_FLOAT)
qmxg = {
{["value"] = n[1], ["offset"] = 0, ["type"] = 16},
{["value"] = -8000, ["offset"] = 4, ["type"] = 16},
{["value"] = 550, ["offset"] = 20, ["type"] = 16},
--{["value"] = 1, ["offset"] = 204, ["type"] = 16},
}
--{["value"] = 999999, ["offset"] = 208, ["type"] = 16},
---{["value"] = 999999, ["offset"] = 24, ["type"] = 16},
---{["value"] = 999999, ["offset"] = 192, ["type"] = 16},
---{["value"] = 999999, ["offset"] = 196, ["type"] = 16},
---{["value"] = 999999, ["offset"] = 200, ["type"] = 16},
xqmnb(qmnb)
end

function Bypass3()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jsjsidonsj"},
{["value"] = 4.764414778704378E-42, ["type"] = 16},
{["lv"] = 800.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.07500000298023224, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 1000, ["offset"] = 8, ["type"] = 16},
{["value"] = -999999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function Bypass4()
-- 32 bit offset 4 is 0.05000000075
-- 64 bit offset 4 is 0.05000000074505806
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "cwxpo"},
{["value"] = 0.25, ["type"] = 16},
{["lv"] = 0.05000000075, ["offset"] = 4, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = 32, ["type"] = 16},
}
local n = gg.prompt({'Edit your own Flap (Default 22) \nDont Try More Than 50 It Will Stall : [12; 60]'}, {22}, {'number'}) if n == nil then return end

---gg.editAll(n[1],gg.TYPE_FLOAT)
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = n[1], ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
end
---0.25;0.01999999955;3.0
function Bypass5()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "plnmuo"},
{["value"] = 0.25, ["type"] = 16},
{["lv"] = 0.019999999552965164, ["offset"] = 4, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = 32, ["type"] = 16},
}
local n = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [20; 50]'}, {23}, {'number'}) if n == nil then return end
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = n[1], ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()



--[[
gg.searchNumber("1.4012985e-42;500;0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.refineNumber("1.4012985e-42;0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(999999)
gg.editAll("500000;0", gg.TYPE_FLOAT)


gg.clearResults()
gg.searchNumber("2.8025969e-43;500;0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.setVisible(false)
gg.refineNumber("2.8025969e-43;0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("5000000;0", gg.TYPE_FLOAT)
gg.clearResults()
--]]
end

function Bypass6()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jwjjsj"},
{["value"] = 5.605193857299268E-43, ["type"] = 16},
{["lv"] = 0.11999999731779099, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 5000000000, ["offset"] = 0, ["type"] = 16},
{["value"] = -999999999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function Bypass7()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "fullbossgerm"},
{["value"] = 8700.0, ["type"] = 16},
{["lv"] = 4000.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 30000, ["offset"] = 0, ["type"] = 16},
{["value"] = -30000, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function Bypass8()
gg.toast("■□□□□□□10%")
gg.sleep(300)
gg.toast("■■□□□□□20%")
gg.sleep(300)
gg.toast("■■■□□□□40%")
gg.sleep(300)
gg.toast("■■■■□□□60%")
gg.sleep(300)
gg.toast("■■■■■□□80%")
gg.sleep(300)
gg.toast("■■■■■■□90%")
gg.sleep(300)
gg.toast("■■■■■■■100%")
gg.sleep(200)
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C491D0
setvalue(so+py,16,55)
gg.clearResults()
gg.alert(" Active @Yurii_Chan 🇨🇳️")
end

function Bypass9()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Golden Pharaoh X-Suit"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405628, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.alert(" Active @Yurii_Chan 🇨🇳️")
end

function dm20mm()
--- 64 bit offset is 20
--- 32 bit offset is 12
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "20mmDamage"},
{["value"] = 650.0, ["type"] = 16},
{["lv"] = 180.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
{["value"] = 8000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function dm50cal()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "50caldmg"},
{["value"] = 820.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
{["value"] = 6000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function dm13mmjp()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "13mmjpn"},
{["value"] = 820.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
{["value"] = 5000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function dm79mm()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "13mmjpn"},
{["value"] = 850.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 1500, ["offset"] = 0, ["type"] = 16},
{["value"] = 5000, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function Exit()
gg.alert(" 🇨🇳")
print(" 🇨🇳")
---gg.skipRestoreState()
os.exit()
gg.setVisible(true)
end

function DevKey()
    table_menu = {"Note👍","Value Store🏴‍☠️","Hmm"}
  local menu = gg.choice(table_menu, 0,"Back")
  if not menu then HOME() end
  if menu==1 then fly_1() end
  if menu==2 then fly_2() end
  if menu==3 then fly_3() end
  if menu==6 then HOME() end
end

function fly_1()
  gg.alert("🔛DBNT : Do But Not Try 🔜HTF : Hard To Find🆙 \nNote: \n One Function (DBNT🔛) \n Speed Limiter (HTF🔜) \n")
end

function fly_2()
  gg.alert("Nope To Lazy")
end

function fly_3()
--local n = gg.prompt({'Edit your own RPM (Default 10000) \nDont Try More Than 12000 Speed Limiter Will Kill You : [5000; 15000]'}, {10000}, {'number'}) if n == nil then return end
--a = 2000

gg.alert("The edit value is "..a[1].." .")
end
--gg.alert("🔛DBNT : Do But Not Try 🔜HTF : Hard To Find🆙 \nNote: \n One Function (DBNT🔛) \n Speed Limiter (HTF🔜) \n")

function oneclick()
sleep = gg.alert("Your Nation","US/USSR","JP/GRM")
if sleep == 1 then Bypass2() Bypass4() BYPS01() BYPS02() BYPS03() BYPS04() BYPS05() BYPS06() BYPS07() BYPS08() BYPS09() BYPS10() Bypass3() am() am1() dm50cal() dm20mm() Bypass1() dm13mmjp() am2() dm79mm() am3()end
if sleep == 2 then Bypass2() Bypass5() BYPS01() BYPS02() BYPS03() BYPS04() BYPS05() BYPS06() BYPS07() BYPS08() BYPS09() BYPS10() Bypass3() am() am1() dm50cal() dm20mm() Bypass1() dm13mmjp() am2() dm79mm() am3()end
if sleep == 3 then Bypass2() Bypass5() BYPS01() BYPS02() BYPS03() BYPS04() BYPS05() BYPS06() BYPS07() BYPS08() BYPS09() BYPS10() Bypass3() am() am1() dm50cal() dm20mm() Bypass1() dm13mmjp() am2() dm79mm() am3()end
if sleep == 4 then Bypass2() Bypass4() BYPS01() BYPS02() BYPS03() BYPS04() BYPS05() BYPS06() BYPS07() BYPS08() BYPS09() BYPS10() Bypass3() am() am1() dm50cal() dm20mm() Bypass1() dm13mmjp() am2() dm79mm() am3()end
end

function winggrmbf109() ---Zero And German BF-109
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -5500.0, ["offset"] = 76, ["type"] = 16},
--{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
--{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = -30000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

function wingbf109() ---Zero And German BF-109
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "jjjhha"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = -6000.0, ["offset"] = 76, ["type"] = 16},
--{["lv"] = 1.0, ["offset"] = 80, ["type"] = 16},
--{["lv"] = -7.5, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = -40000.0, ["offset"] = 76, ["type"] = 16},
}
xqmnb(qmnb)
---gg.alert("Done")
---gg.addListItems(xqmnb)
---0.5;5.0;-1500.0;-5500.0
end

while(true)do
if gg.isVisible(true) then 
PUBGM=1
gg.setVisible(false)
end

if PUBGM== 1 then HOME()end
end
