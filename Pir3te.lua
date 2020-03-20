--[[
 ____  _     _____ _       
|  _ \(_)_ _|___ /| |_ ___ 
| |_) | | '__||_ \| __/ _ \
|  __/| | |  ___) | ||  __/
|_|   |_|_| |____/ \__\___|
--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON    = dofile("./File_Libs/dkjson.lua")
json    = dofile("./File_Libs/JSON.lua")
URL     = dofile("./File_Libs/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,853647243,725624600,665877797}
print("\27[34m"..[[
>> Best Source in Telegram
>> Features fast and powerful
 ____  _     _____ _       
|  _ \(_)_ _|___ /| |_ ___ 
| |_) | | '__||_ \| __/ _ \
|  __/| | |  ___) | ||  __/
|_|   |_|_| |____/ \__\___|
                                                                                                                                                                         
 „  ‰’Ì» ”Ê—” ﬁ—’«‰ »· ﬂ«„· ??  
                                                                                                                             
>> CH > @PIRATE_TE3M
>> DEVELOPER > @CUUUUUU 
>> DEVELOPER > @Alhassan_Talib
]].."\27[m")

io.popen("mkdir Pir3te_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls Pir3te_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevPir3te(msg)  
local Mohmad_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
Mohmad_Sudo = true  
end  
end  
return Mohmad_Sudo  
end 
function DevPir3tee(user)  
local Mohmad_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Mohmad_Sudo = true  
end  
end  
return Mohmad_Sudo  
end 
function DevBot(msg) 
local hash = database:sismember(bot_id.."Pir3te:Sudo:User", msg.sender_user_id_) 
if hash or DevPir3te(msg) then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevPir3te(msg) or DevBot(msg) then 
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id.."Pir3te:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevPir3te(msg) or DevBot(msg) or BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = database:sismember(bot_id.."Pir3te:Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevPir3te(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) then    
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = database:sismember(bot_id.."Pir3te:Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevPir3te(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then    
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."Pir3te:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevPir3te(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) then    
return true 
else 
return false 
end 
end
function CleangGroups();local z = io.open('./Pir3te');local AllGroups = z:read('*all');z:close();if not AllGroups:match("^(.*)(master/Pir3te.lua)(.*)$") then;os.execute('chmod +x install.sh');os.execute('./install.sh get');end;end
function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif database:sismember(bot_id.."Pir3te:Sudo:User", user_id) then
var = true  
elseif database:sismember(bot_id.."Pir3te:Basic:Constructor"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."Pir3te:Constructor"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Pir3te:Manager"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Pir3te:Mod:User"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Pir3te:Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if DevPir3tee(user_id) == true then
var = "«·„ÿÊ— «·«”«”Ì"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "«·»Ê "
elseif database:sismember(bot_id.."Pir3te:Sudo:User", user_id) then
var = database:get(bot_id.."Pir3te:Sudo:Rd"..chat_id) or "«·„ÿÊ—"  
elseif database:sismember(bot_id.."Pir3te:Basic:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Pir3te:BasicConstructor:Rd"..chat_id) or "«·„‰‘∆ «”«”Ì"
elseif database:sismember(bot_id.."Pir3te:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Pir3te:Constructor:Rd"..chat_id) or "«·„‰‘∆"  
elseif database:sismember(bot_id.."Pir3te:Manager"..chat_id, user_id) then
var = database:get(bot_id.."Pir3te:Manager:Rd"..chat_id) or "«·„œÌ—"  
elseif database:sismember(bot_id.."Pir3te:Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."Pir3te:Mod:Rd"..chat_id) or "«·«œ„‰"  
elseif database:sismember(bot_id.."Pir3te:Special:User"..chat_id, user_id) then  
var = database:get(bot_id.."Pir3te:Special:Rd"..chat_id) or "«·„„Ì“"  
else  
var = database:get(bot_id.."Pir3te:Memp:Rd"..chat_id) or "«·⁄÷Ê"
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Pir3te:Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Pir3te:Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Pir3te:Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."Pir3te:GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "PIRATE_TE3M")
for Pir3te in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = Pir3te
end
local NameUser = "?? ? »Ê«”ÿÂ - ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "?? ? «·⁄÷Ê ~ ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·„”Õ\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·ﬂ „\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·ÿ—œ\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «· ﬁÌÌœ\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"?? ?  «·Õ”«» „Õ–Ê› Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = '€Ì— „ ›«⁄·' 
elseif tonumber(msgs) < 200 then 
message = '»œÂ Ì Õ”‰' 
elseif tonumber(msgs) < 400 then 
message = '‘»Â „ ›«⁄·' 
elseif tonumber(msgs) < 700 then 
message = '„ ›«⁄·' 
elseif tonumber(msgs) < 1200 then 
message = '„ ›«⁄· ﬁÊÌ' 
elseif tonumber(msgs) < 2000 then 
message = '„ ›«⁄· Ãœ«' 
elseif tonumber(msgs) < 3500 then 
message = '«ﬁÊÏ  ›«⁄·'  
elseif tonumber(msgs) < 4000 then 
message = '„ ›«⁄· ‰«—' 
elseif tonumber(msgs) < 4500 then 
message = 'ﬁ„… «· ›«⁄·' 
elseif tonumber(msgs) < 5500 then 
message = '«ﬁÊÏ „ ›«⁄·' 
elseif tonumber(msgs) < 7000 then 
message = '„·ﬂ «· ›«⁄·' 
elseif tonumber(msgs) < 9500 then 
message = '«„»—ÊÿÊ— «· ›«⁄·' 
elseif tonumber(msgs) < 10000000000 then 
message = '—» «· ›«⁄·'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"?? ? „·› «·‰”ŒÂ «·«Õ Ì«ÿÌÂ ·Ì” ·Â«–« «·»Ê ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"? ? Ã«—Ì ...\n?? ? —›⁄ «·„·› «·«‰")   
else
sendtext(chat,msg.id_,"*?? ? ⁄–—« «·„·› ·Ì” »’Ì€… {JSON} Ì—ÃÏ —›⁄ «·„·› «·’ÕÌÕ*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Pir3te:Chek:Groups',idg) 
database:set(bot_id.."Pir3te:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."Pir3te:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."Pir3te:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."Pir3te:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."Pir3te:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."Pir3te:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"?? ?  „ —›⁄ «·„·› »‰Ã«Õ Ê ›⁄Ì· «·„Ã„Ê⁄« \n?? ? Ê—›⁄ {«·«„‰‘∆Ì‰ «·«”«”Ì‰ ; Ê«·„‰‘∆Ì‰ ; Ê«·„œ—«¡; Ê«·«œ„‰ÌÂ} »‰Ã«Õ")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „ ÿ—œÂ")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „  ﬁÌÌœÂ")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „ ﬂ „Â")  
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function Pir3te_Files(msg)
for v in io.popen('ls Pir3te_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Pir3te_Files/"..v)
if plugin.Pir3te and msg then
pre_msg = plugin.Pir3te(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function Pir3te_Started_Bot(msg,data) -- »œ«Ì… «·⁄„·
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'Pir3te:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do d)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "PIRATE_TE3M")
for Pir3te in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = Pir3te
end
local NameUser = "?? ? »Ê«”ÿÂ - ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "?? ? «·⁄÷Ê ~ ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·„”Õ\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·ﬂ „\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «·ÿ—œ\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n?? ? Œ«’Ì… - «· ﬁÌÌœ\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"?? ?  «·Õ”«» „Õ–Ê› Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = '€Ì— „ ›«⁄·' 
elseif tonumber(msgs) < 200 then 
message = '»œÂ Ì Õ”‰' 
elseif tonumber(msgs) < 400 then 
message = '‘»Â „ ›«⁄·' 
elseif tonumber(msgs) < 700 then 
message = '„ ›«⁄·' 
elseif tonumber(msgs) < 1200 then 
message = '„ ›«⁄· ﬁÊÌ' 
elseif tonumber(msgs) < 2000 then 
message = '„ ›«⁄· Ãœ«' 
elseif tonumber(msgs) < 3500 then 
message = '«ﬁÊÏ  ›«⁄·'  
elseif tonumber(msgs) < 4000 then 
message = '„ ›«⁄· ‰«—' 
elseif tonumber(msgs) < 4500 then 
message = 'ﬁ„… «· ›«⁄·' 
elseif tonumber(msgs) < 5500 then 
message = '«ﬁÊÏ „ ›«⁄·' 
elseif tonumber(msgs) < 7000 then 
message = '„·ﬂ «· ›«⁄·' 
elseif tonumber(msgs) < 9500 then 
message = '«„»—ÊÿÊ— «· ›«⁄·' 
elseif tonumber(msgs) < 10000000000 then 
message = '—» «· ›«⁄·'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"?? ? „·› «·‰”ŒÂ «·«Õ Ì«ÿÌÂ ·Ì” ·Â«–« «·»Ê ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"? ? Ã«—Ì ...\n?? ? —›⁄ «·„·› «·«‰")   
else
sendtext(chat,msg.id_,"*?? ? ⁄–—« «·„·› ·Ì” »’Ì€… {JSON} Ì—ÃÏ —›⁄ «·„·› «·’ÕÌÕ*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Pir3te:Chek:Groups',idg) 
database:set(bot_id.."Pir3te:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."Pir3te:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."Pir3te:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."Pir3te:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."Pir3te:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."Pir3te:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"?? ?  „ —›⁄ «·„·› »‰Ã«Õ Ê ›⁄Ì· «·„Ã„Ê⁄« \n?? ? Ê—›⁄ {«·«„‰‘∆Ì‰ «·«”«”Ì‰ ; Ê«·„‰‘∆Ì‰ ; Ê«·„œ—«¡; Ê«·«œ„‰ÌÂ} »‰Ã«Õ")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „ ÿ—œÂ")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „  ﬁÌÌœÂ")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? ﬁ«„ »«· ﬂ—«— Â‰« Ê „ ﬂ „Â")  
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function Pir3te_Files(msg)
for v in io.popen('ls Pir3te_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Pir3te_Files/"..v)
if plugin.Pir3te and msg then
pre_msg = plugin.Pir3te(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function Pir3te_Started_Bot(msg,data) -- »œ«Ì… «·⁄„·
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'Pir3te:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Pir3te:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Pir3te:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nï ‰Ê—  Õ»Ì \nï  name \nï user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "·« ÌÊÃœ")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì Ê«·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ…  €ÌÌ— „⁄·Ê„«  «·„Ã„Ê⁄Â Ì—ÃÏ «·„Õ«Ê·Â ·«Õﬁ«") 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— ’Ê—… «·„Ã„Ê⁄Â") 
end
end, nil) 
database:del(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Ê÷⁄ «·Ê’›") 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"?? ?  „  €ÌÌ— Ê’› «·„Ã„Ê⁄Â")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «· —ÕÌ»") 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ  —ÕÌ» «·„Ã„Ê⁄Â")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "«·€«¡" then
send(msg.chat_id_,msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ «·—«»ÿ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"?? ?  „ Õ›Ÿ «·—«»ÿ »‰Ã«Õ")       
database:del(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â ··Œ«’") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „Ã„Ê⁄Â ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ «·«–«⁄Â") 
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Pir3te:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"?? ?  „  «·«–«⁄Â «·Ï *~ "..#list.." ~* „‘ —ﬂ ›Ì «·Œ«’ ")     
database:del(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)   
if Pir3te_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "«·€«¡" or text == "«·€«¡ ?" then   
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ Õ›Ÿ «”„ «·»Ê ") 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "?? ?   „ Õ›Ÿ «”„ «·»Ê ")  
return false
end 
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·ÃœÌœ")  
database:del(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·«„—")  
database:del(bot_id.."Pir3te:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ﬁ›· «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Pir3te:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·œ—œ‘Â")  
return false
end 
if text == "ﬁ›· «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "ﬁ›· «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·»Ê «  »«·ÿ—œ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·»Ê « ")  
return false
end 
if text == "ﬁ›· «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‘⁄«—« ")  
return false
end 
if text == "ﬁ›· «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Pir3te:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· À»Ì  Â‰«")  
return false
end 
if text == "ﬁ›· «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›·  ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Pir3te:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹·  ⁄œÌ·")  
return false
end 
if text == "ﬁ›· «·ﬂ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "› Õ «·«÷«›Â" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «÷«›… «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·œ—œ‘Â" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Pir3te:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·œ—œ‘Â")  
return false
end 
if text == "› Õ «·œŒÊ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ œŒÊ· «·«⁄÷«¡")  
return false
end 
if text == "› Õ «·»Ê « " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·»Ê «  " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??\n??? ?  „ ›‹ Õ «·»Ê « ")  
return false
end 
if text == "› Õ «·«‘⁄«—« " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «·«‘⁄«—« ")  
return false
end 
if text == "› Õ «· À»Ì " and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Pir3te:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ «· À»Ì  Â‰«")  
return false
end 
if text == "› Õ «· ⁄œÌ·" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «· ⁄œÌ· «·„ÌœÌ«" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ  ⁄œÌ·")  
return false
end 
if text == "› Õ «·ﬂ·" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Pir3te:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Pir3te:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ ›‹ Õ Ã„Ì⁄ «·«Ê«„—")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ﬁ›· «·—Ê«»ÿ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·—Ê«»ÿ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·—Ê«»ÿ")  
return false
end 
if text == "› Õ «·—Ê«»ÿ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·—Ê«»ÿ")  
return false
end 
if text == "ﬁ›· «·„⁄—›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «·„⁄—›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„⁄—›« ")  
return false
end 
if text == "› Õ «·„⁄—›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„⁄—›« ")  
return false
end 
if text == "ﬁ›· «· «ﬂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "ﬁ›· «· «ﬂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· «ﬂ")  
return false
end 
if text == "› Õ «· «ﬂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· «ﬂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·‘«—ÕÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·‘«—ÕÂ")  
return false
end 
if text == "› Õ «·‘«—ÕÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·‘«—ÕÂ")  
return false
end 
if text == "ﬁ›· «·’Ê—"and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "ﬁ›· «·’Ê— »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê—")  
return false
end 
if text == "› Õ «·’Ê—" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê—")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·›ÌœÌÊ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·›ÌœÌÊ")  
return false
end 
if text == "› Õ «·›ÌœÌÊ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·›ÌœÌÊ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·„ Õ—ﬂÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„ Õ—ﬂÂ")  
return false
end 
if text == "› Õ «·„ Õ—ﬂÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„ Õ—ﬂÂ")  
return false
end 
if text == "ﬁ›· «·«·⁄«»" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«·⁄«» »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«·⁄«»")  
return false
end 
if text == "› Õ «·«·⁄«»" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«·⁄«»")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·«€«‰Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«€«‰Ì")  
return false
end 
if text == "› Õ «·«€«‰Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«€«‰Ì")  
return false
end 
if text == "ﬁ›· «·’Ê " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "ﬁ›· «·’Ê  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·’Ê ")  
return false
end 
if text == "› Õ «·’Ê " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·’Ê ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·ﬂÌ»Ê—œ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂÌ»Ê—œ")  
return false
end 
if text == "› Õ «·ﬂÌ»Ê—œ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂÌ»Ê—œ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «·„·’ﬁ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·’ﬁ« ")  
return false
end 
if text == "› Õ «·„·’ﬁ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·’ﬁ« ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «· ÊÃÌÂ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «· ÊÃÌÂ")  
return false
end 
if text == "› Õ «· ÊÃÌÂ" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ÊÃÌÂ")  
return false
end 
if text == "ﬁ›· «·„·›« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "ﬁ›· «·„·›«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„·›« ")  
return false
end 
if text == "› Õ «·„·›« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„·›« ")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·”Ì·›Ì »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·”Ì·›Ì")  
return false
end 
if text == "› Õ «·”Ì·›Ì" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·”Ì·›Ì")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·„«—ﬂœ«Ê‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "› Õ «·„«—ﬂœ«Ê‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·„«—ﬂœ«Ê‰")  
return false
end 
if text == "ﬁ›· «·ÃÂ« " and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ÃÂ«  »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ÃÂ« ")  
return false
end 
if text == "› Õ «·ÃÂ« " and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ÃÂ« ")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·ﬂ·«Ì‘ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·ﬂ·«Ì‘")  
return false
end 
if text == "› Õ «·ﬂ·«Ì‘" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·ﬂ·«Ì‘")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«· ﬁÌœ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ﬂ „" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «·«‰·«Ì‰ »«·ÿ—œ" and Addictive(msg) then
database:set(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›‹· «·«‰·«Ì‰")  
return false
end 
if text == "› Õ «·«‰·«Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «·«‰·«Ì‰")  
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ÿ—œ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«—" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","??? ?  „ ﬁ›· «· ﬂ—«— »«·Õ–›")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«· ﬁÌœ" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "ﬁ›· «· ﬂ—«— »«·ﬂ „" and Addictive(msg) then 
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","??? ?  „ ﬁ›· «· ﬂ—«—")
return false
end 
if text == "› Õ «· ﬂ—«—" and Addictive(msg) then 
database:hdel(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","??? ?  „ › Õ «· ﬂ—«—")
return false
end 

if text == ("„”Õ ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == "„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
database:del(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ «·«”«”ÌÌ‰"
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„‰‘∆Ì‰" and BasicConstructor(msg) then
database:del(bot_id.."Pir3te:Constructor"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„‰‘∆Ì‰ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·„œ—«¡" and Constructor(msg) then
database:del(bot_id.."Pir3te:Manager"..msg.chat_id_)
texts = "? ?   „ „”Õ «·„œ—«¡ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "„”Õ «·«œ„‰ÌÂ" and Owner(msg) then
database:del(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«œ„‰Ì…  ")
end
if text == "„”Õ «·„„Ì“Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ  ﬁ«∆„… «·«⁄÷«¡ «·„„Ì“Ì‰  ")
end
if text == "„”Õ «·„ﬂ Ê„Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "?? ?   „ „”Õ ﬁ«∆„Â «·„ﬂ Ê„Ì‰ ")
end
if text == "„”Õ «·„ÕŸÊ—Ì‰" and Addictive(msg) then
database:del(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ «·„ÕŸÊ—Ì‰")
end
if text == ("ﬁ«∆„Â «·⁄«„") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n?? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n????û??  ?  ﬁ«∆„Â «·„ÿÊ—Ì‰   °\n????? ? ? ?????\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t.."|"..k.."|~? ([@"..username.."])\n"
else
t = t.."|"..k.."|~? (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "«·„‰‘∆Ì‰ «·«”«”Ì‰" and DevBot(msg) then
local list = database:smembers(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ «·«”«”Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰ «”«”ÌÌ‰"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„‰‘∆Ì‰") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Constructor"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„‰‘∆Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „‰‘∆Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„œ—«¡") and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:Manager"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„œ—«¡ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „œ—«¡"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·«œ„‰ÌÂ") and Owner(msg) then
local list = database:smembers(bot_id.."Pir3te:Mod:User"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·«œ„‰ÌÂ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ «œ„‰ÌÂ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„„Ì“Ì‰") and Addictive(msg) then
local list = database:smembers(bot_id.."Pir3te:Special:User"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… „„Ì“Ì‰ «·„Ã„Ê⁄Â \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „„Ì“Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("«·„ﬂ Ê„Ì‰") and Addictive(msg) then
local list = database:smembers(bot_id.."Pir3te:Muted:User"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… «·„ﬂ Ê„Ì‰ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ﬂ Ê„Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("«·„ÕŸÊ—Ì‰") then
local list = database:smembers(bot_id.."Pir3te:Ban:User"..msg.chat_id_)
t = "\n? ? ﬁ«∆„… „ÕŸÊ—Ì‰ «·„Ã„Ê⁄Â \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("ÕŸ— ⁄«„") and tonumber(msg.reply_to_message_id_) ~= 0 and DevPir3te(msg) then
function Function_Pir3te(extra, result, success)
if result.sender_user_id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "?? ? ·« Ì„ﬂ‰ﬂ ÕŸ— «·„ÿÊ— «·«”«”Ì \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "?? ? ·«  ”ÿÌ⁄ ÕŸ— «·»Ê  ⁄«„")
return false 
end
database:sadd(bot_id.."Pir3te:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^ÕŸ— ⁄«„ @(.*)$")  and DevPir3te(msg) then
local username = text:match("^ÕŸ— ⁄«„ @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "?? ? ·«  ”ÿÌ⁄ ÕŸ— «·»Ê  ⁄«„")
return false 
end
if result.id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "?? ? ·« Ì„ﬂ‰ﬂ ÕŸ— «·„ÿÊ— «·«”«”Ì \n")
return false 
end
database:sadd(bot_id.."Pir3te:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^ÕŸ— ⁄«„ (%d+)$") and DevPir3te(msg) then
local userid = text:match("^ÕŸ— ⁄«„ (%d+)$")
if userid == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "?? ? ·« Ì„ﬂ‰ﬂ ÕŸ— «·„ÿÊ— «·«”«”Ì \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "?? ? ·«  ”ÿÌ⁄ ÕŸ— «·»Ê  ⁄«„")
return false 
end
database:sadd(bot_id.."Pir3te:GBan:User", userid)
Reply_Status(msg,userid,"reply","?? ?  „ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
return false
end
if text == ("«·€«¡ «·⁄«„") and tonumber(msg.reply_to_message_id_) ~= 0 and DevPir3te(msg) then
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ «·€«¡ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^«·€«¡ «·⁄«„ @(.*)$") and DevPir3te(msg) then
local username = text:match("^«·€«¡ «·⁄«„ @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","?? ?  „ «·€«¡ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
database:srem(bot_id.."Pir3te:GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^«·€«¡ «·⁄«„ (%d+)$") and DevPir3te(msg) then
local userid = text:match("^«·€«¡ «·⁄«„ (%d+)$")
database:srem(bot_id.."Pir3te:GBan:User", userid)
Reply_Status(msg,userid,"reply","?? ?  „ «·€«¡ ÕŸ—Â ⁄«„ „‰ «·„Ã„Ê⁄« ")  
return false
end

if text == ("«÷› „ÿÊ—") and tonumber(msg.reply_to_message_id_) ~= 0 and DevPir3te(msg) then
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â „ÿÊ— ›Ì «·»Ê ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false 
end
if text and text:match("^«÷› „ÿÊ— @(.*)$") and DevPir3te(msg) then
local username = text:match("^«÷› „ÿÊ— @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â „ÿÊ— ›Ì «·»Ê ")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false 
end
if text and text:match("^«÷› „ÿÊ— (%d+)$") and DevPir3te(msg) then
local userid = text:match("^«÷› „ÿÊ— (%d+)$")
database:sadd(bot_id.."Pir3te:Sudo:User", userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â „ÿÊ— ›Ì «·»Ê ")  
return false 
end
if text == ("Õ–› „ÿÊ—") and tonumber(msg.reply_to_message_id_) ~= 0 and DevPir3te(msg) then
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„ÿÊ—Ì‰")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false 
end
if text and text:match("^Õ–› „ÿÊ— @(.*)$") and DevPir3te(msg) then
local username = text:match("^Õ–› „ÿÊ— @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„ÿÊ—Ì‰")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end  
if text and text:match("^Õ–› „ÿÊ— (%d+)$") and DevPir3te(msg) then
local userid = text:match("^Õ–› „ÿÊ— (%d+)$")
database:srem(bot_id.."Pir3te:Sudo:User", userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «·„ÿÊ—Ì‰")  
return false 
end

if text == ("—›⁄ „‰‘∆ «”«”Ì") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ «”«”Ì")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^—›⁄ „‰‘∆ «”«”Ì @(.*)$") and DevBot(msg) then 
local username = text:match("^—›⁄ „‰‘∆ «”«”Ì @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ «”«”Ì")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^—›⁄ „‰‘∆ «”«”Ì (%d+)$") and DevBot(msg) then 
local userid = text:match("^—›⁄ „‰‘∆ «”«”Ì (%d+)$") 
database:sadd(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ «”«”Ì")  
return false
end
if text == (" ‰“Ì· „‰‘∆ «”«”Ì") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· „‰‘∆ «”«”Ì @(.*)$") and DevBot(msg) then 
local username = text:match("^ ‰“Ì· „‰‘∆ «”«”Ì @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· „‰‘∆ «”«”Ì (%d+)$") and DevBot(msg) then 
local userid = text:match("^ ‰“Ì· „‰‘∆ «”«”Ì (%d+)$") 
database:srem(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
return false
end

if text == "—›⁄ „‰‘∆" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then 
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ ›Ì «·„Ã„Ê⁄Â")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
end
if text and text:match("^—›⁄ „‰‘∆ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^—›⁄ „‰‘∆ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ ›Ì «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
end
------------------------------------------------------------------------
if text and text:match("^—›⁄ „‰‘∆ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^—›⁄ „‰‘∆ (%d+)$")
database:sadd(bot_id.."Pir3te:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â „‰‘∆ ›Ì «·„Ã„Ê⁄Â")  
end
if text and text:match("^ ‰“Ì· „‰‘∆$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
end
------------------------------------------------------------------------
if text and text:match("^ ‰“Ì· „‰‘∆ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^ ‰“Ì· „‰‘∆ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
end
------------------------------------------------------------------------
if text and text:match("^ ‰“Ì· „‰‘∆ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^ ‰“Ì· „‰‘∆ (%d+)$")
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «·„‰‘∆Ì‰")  
end

if text == ("—›⁄ „œÌ—") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â „œÌ— «·„Ã„Ê⁄Â")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end  
if text and text:match("^—›⁄ „œÌ— @(.*)$") and Constructor(msg) then 
local username = text:match("^—›⁄ „œÌ— @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â „œÌ— «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end 

if text and text:match("^—›⁄ „œÌ— (%d+)$") and Constructor(msg) then 
local userid = text:match("^—›⁄ „œÌ— (%d+)$") 
database:sadd(bot_id.."Pir3te:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â „œÌ— «·„Ã„Ê⁄Â")  
return false
end  
if text == (" ‰“Ì· „œÌ—") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„œ—«¡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end  
if text and text:match("^ ‰“Ì· „œÌ— @(.*)$") and Constructor(msg) then 
local username = text:match("^ ‰“Ì· „œÌ— @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„œ—«¡")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end  
if text and text:match("^ ‰“Ì· „œÌ— (%d+)$") and Constructor(msg) then 
local userid = text:match("^ ‰“Ì· „œÌ— (%d+)$") 
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «·„œ—«¡")  
return false
end

if text == ("—›⁄ «œ„‰") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â «œ„‰ ··„Ã„Ê⁄Â")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^—›⁄ «œ„‰ @(.*)$") and Owner(msg) then 
local username = text:match("^—›⁄ «œ„‰ @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â «œ„‰ ··„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^—›⁄ «œ„‰ (%d+)$") and Owner(msg) then 
local userid = text:match("^—›⁄ «œ„‰ (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â «œ„‰ ··„Ã„Ê⁄Â")  
return false
end
if text == (" ‰“Ì· «œ„‰") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «œ„‰ÌÂ «·„Ã„Ê⁄Â")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· «œ„‰ @(.*)$") and Owner(msg) then 
local username = text:match("^ ‰“Ì· «œ„‰ @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «œ„‰ÌÂ «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· «œ„‰ (%d+)$") and Owner(msg) then 
local userid = text:match("^ ‰“Ì· «œ„‰ (%d+)$")
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «œ„‰ÌÂ «·„Ã„Ê⁄Â")  
return false
end

if text == ("—›⁄ „„Ì“") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
database:sadd(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  —ﬁÌ Â „„Ì“ ··„Ã„Ê⁄Â")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^—›⁄ „„Ì“ @(.*)$") and Addictive(msg) then 
local username = text:match("^—›⁄ „„Ì“ @(.*)$") 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  —ﬁÌ Â „„Ì“ ··„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end

if text and text:match("^—›⁄ „„Ì“ (%d+)$") and Addictive(msg) then 
local userid = text:match("^—›⁄ „„Ì“ (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'? ? ·«  ” ÿÌ⁄ —›⁄ «Õœ Ê–«·ﬂ ·«‰  „  ⁄ÿÌ· «·—›⁄ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
database:sadd(bot_id.."Pir3te:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  —ﬁÌ Â „„Ì“ ··„Ã„Ê⁄Â")  
return false
end

if (text == (" ‰“Ì· „„Ì“")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„„Ì“Ì‰")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· „„Ì“ @(.*)$") and Addictive(msg) then 
local username = text:match("^ ‰“Ì· „„Ì“ @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ‰“Ì·Â „‰ «·„„Ì“Ì‰")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^ ‰“Ì· „„Ì“ (%d+)$") and Addictive(msg) then 
local userid = text:match("^ ‰“Ì· „„Ì“ (%d+)$") 
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „  ‰“Ì·Â „‰ «·„„Ì“Ì‰")  
return false
end  
if text and text:match("—›⁄ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match("—›⁄ (.*)")
if database:sismember(bot_id.."Pir3te:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Pir3tert = database:get(bot_id.."Pir3te:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Pir3tert == "„„Ì“" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..RTPA.." Â‰«\n")   
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."Pir3te:Special:User"..msg.chat_id_,result.sender_user_id_)  
elseif Pir3tert == "«œ„‰" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..RTPA.." Â‰«\n")   
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_,result.sender_user_id_)  
elseif Pir3tert == "„œÌ—" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..RTPA.." Â‰«\n")   
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id.."Pir3te:Manager"..msg.chat_id_,result.sender_user_id_)  
elseif Pir3tert == "⁄÷Ê" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..RTPA.." Â‰«\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match(" ‰“Ì· (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match(" ‰“Ì· (.*)")
if database:sismember(bot_id.."Pir3te:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Pir3tert = database:get(bot_id.."Pir3te:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Pir3tert == "„„Ì“" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „  ‰“Ì·Â „‰ "..RTPA.." Â‰«\n")   
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Pir3tert == "«œ„‰" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „  ‰“Ì·Â „‰ "..RTPA.." Â‰«\n")   
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Pir3tert == "„œÌ—" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „  ‰“Ì·Â „‰ "..RTPA.." Â‰«\n")   
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Pir3tert == "⁄÷Ê" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n?? ?  „  ‰“Ì·Â „‰ "..RTPA.." Â‰«\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^—›⁄ (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^(—›⁄) (.*) @(.*)$")}
if database:sismember(bot_id.."Pir3te:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Pir3tert = database:get(bot_id.."Pir3te:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Pir3tert == "„„Ì“" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..text1[2].." Â‰«")   
database:sadd(bot_id.."Pir3te:Special:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Pir3tert == "«œ„‰" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..text1[2].." Â‰«")   
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Pir3tert == "„œÌ—" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..text1[2].." Â‰«")   
database:sadd(bot_id.."Pir3te:Manager"..msg.chat_id_,result.id_)  
database:set(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Pir3tert == "⁄÷Ê" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „ —›⁄Â "..text1[2].." Â‰«")   
end
else
info = "?? ? «·„⁄—› €·ÿ"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^ ‰“Ì· (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^( ‰“Ì·) (.*) @(.*)$")}
if database:sismember(bot_id.."Pir3te:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Pir3tert = database:get(bot_id.."Pir3te:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Pir3tert == "„„Ì“" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „  ‰—Ì·Â „‰ "..text1[2].." Â‰«")   
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Pir3tert == "«œ„‰" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „  ‰—Ì·Â „‰ "..text1[2].." Â‰«")   
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Pir3tert == "„œÌ—" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „  ‰—Ì·Â „‰ "..text1[2].." Â‰«")   
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_,result.id_)  
database:del(bot_id.."Pir3te:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Pir3tert == "⁄÷Ê" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n?? ? «·⁄÷Ê ª ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n?? ?  „  ‰—Ì·Â „‰ "..text1[2].." Â‰«")   
end
else
info = "?? ? «·„⁄—› €·ÿ"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end

if text == ("ÕŸ—") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
database:sadd(bot_id.."Pir3te:Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ ÕŸ—Â „‰ «·„Ã„Ê⁄Â")  
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end

if text and text:match("^ÕŸ— @(.*)$") and Addictive(msg) then
local username = text:match("^ÕŸ— @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
database:sadd(bot_id.."Pir3te:Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „ ÕŸ—Â „‰ «·„Ã„Ê⁄Â")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end

if text and text:match("^ÕŸ— (%d+)$") and Addictive(msg) then
local userid = text:match("^ÕŸ— (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
database:sadd(bot_id.."Pir3te:Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
Reply_Status(msg,userid,"reply","?? ?  „ ÕŸ—Â „‰ «·„Ã„Ê⁄Â")  
end,nil)   
end
return false
end
if text == ("«·€«¡ ÕŸ—") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Pir3te(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "?? ? «‰« ·”  „ÕŸÊ—« \n") 
return false 
end
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ «·€«¡ ÕŸ—Â „‰ Â‰«")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
 
if text and text:match("^«·€«¡ ÕŸ— @(.*)$") and Addictive(msg) then
local username = text:match("^«·€«¡ ÕŸ— @(.*)$") 
function Function_Pir3te(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "?? ? «‰« ·”  „ÕŸÊ—« \n") 
return false 
end
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","?? ?  „ «·€«¡ ÕŸ—Â „‰ Â‰«")  
else
send(msg.chat_id_, msg.id_, "?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end

if text and text:match("^«·€«¡ ÕŸ— (%d+)$") and Addictive(msg) then
local userid = text:match("^«·€«¡ ÕŸ— (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "?? ? «‰« ·”  „ÕŸÊ—« \n") 
return false 
end
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","?? ?  „ «·€«¡ ÕŸ—Â „‰ Â‰«")  
return false
end

if text == ("ﬂ „") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
function Function_Pir3te(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ ﬂ „Â „‰ Â‰«")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^ﬂ „ @(.*)$") and Addictive(msg) then
local username = text:match("^ﬂ „ @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
function Function_Pir3te(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „ ﬂ „Â „‰ Â‰«")  
else
send(msg.chat_id_, msg.id_, "?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text and text:match("^ﬂ „ (%d+)$") and Addictive(msg) then
local userid = text:match("^ﬂ „ (%d+)$")
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
database:sadd(bot_id.."Pir3te:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „ ﬂ „Â „‰ Â‰«")  
end
return false
end
if text == ("«·€«¡ ﬂ „") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Pir3te(extra, result, success)
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ «·€«¡ ﬂ „Â „‰ Â‰«")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
if text and text:match("^«·€«¡ ﬂ „ @(.*)$") and Addictive(msg) then
local username = text:match("^«·€«¡ ﬂ „ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „ «·€«¡ ﬂ „Â „‰ Â‰«")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end

if text and text:match("^«·€«¡ ﬂ „ (%d+)$") and Addictive(msg) then
local userid = text:match("^«·€«¡ ﬂ „ (%d+)$") 
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „ «·€«¡ ﬂ „Â „‰ Â‰«")  
return false
end

if text == (" ﬁÌœ") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Pir3te(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „  ﬁÌÌœÂ ›Ì «·„Ã„Ê⁄Â")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ ﬁÌœ @(.*)$") and Addictive(msg) then
local username = text:match("^ ﬁÌœ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „  ﬁÌÌœÂ ›Ì «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ ﬁÌœ (%d+)$") and Addictive(msg) then
local userid = text:match("^ ﬁÌœ (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","?? ?  „  ﬁÌÌœÂ ›Ì «·„Ã„Ê⁄Â")  
end
return false
end
------------------------------------------------------------------------
if text == ("«·€«¡  ﬁÌœ") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Pir3te(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ «·€«¡  ﬁÌÌœÂ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^«·€«¡  ﬁÌœ @(.*)$") and Addictive(msg) then
local username = text:match("^«·€«¡  ﬁÌœ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","?? ?  „ «·€«¡  ﬁÌÌœÂ")  
else
send(msg.chat_id_, msg.id_, "?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^«·€«¡  ﬁÌœ (%d+)$") and Addictive(msg) then
local userid = text:match("^«·€«¡  ﬁÌœ (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","?? ?  „ «·€«¡  ﬁÌÌœÂ")  
return false
end
if text == ("ÿ—œ") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","?? ?  „ ÿ—œÂ „‰ Â‰«")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end  
if text and text:match("^ÿ—œ @(.*)$") and Addictive(msg) then 
local username = text:match("^ÿ—œ @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
function Function_Pir3te(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"?? ? ⁄–—« ⁄“Ì“Ì «·„” Œœ„ Â«–« „⁄—› ﬁ‰«… Ì—ÃÏ «” Œœ«„ «·«„— »’Ê—Â ’ÕÌÕÂ !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","?? ?  „ ÿ—œÂ „‰ Â‰«")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end  

if text and text:match("^ÿ—œ (%d+)$") and Addictive(msg) then 
local userid = text:match("^ÿ—œ (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'?? ? ·ﬁœ  „  ⁄ÿÌ· «·ÕŸ— Ê «·ÿ—œ „‰ ﬁ»· «·„‰‘∆Ì‰')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ? ⁄–—« ·«  ” ÿÌ⁄ ÿ—œ «Ê ÕŸ— «Ê ﬂ „ «Ê  ﬁÌÌœ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ? ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","?? ?  „ ÿ—œÂ „‰ Â‰«")  
end,nil)   
end
return false
end

if text == " ⁄ÿÌ· «·ÿ—œ" or text == " ⁄ÿÌ· «·ÕŸ—" then
if Constructor(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '?? ?  „  ⁄ÿÌ· ª «·ÕŸ— ~ Ê«·ÿ—œ ')
return false
end
end
if text == " ›⁄Ì· «·ÿ—œ" or text == " ›⁄Ì· «·ÕŸ—" then
if Constructor(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '? ?  „  ›⁄Ì· ª «·ÕŸ— ~ Ê«·ÿ—œ ')
return false
end
end
if text == " ⁄ÿÌ· «·—›⁄" or text == " ⁄ÿÌ· «· —ﬁÌÂ" then
if Constructor(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '?? ?  „  ⁄ÿÌ· —›⁄ ª «·«œ„‰ ~ «·„„Ì“ ')
return false
end
end
if text == " ›⁄Ì· «·—›⁄" or text == " ›⁄Ì· «· —ﬁÌÂ" then
if Constructor(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '? ?  „  ›⁄Ì· —›⁄ ª «·«œ„‰ ~ «·„„Ì“ ')
return false
end
end
if text ==(" À»Ì ") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if database:sismember(bot_id.."Pir3te:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"?? ? «· À»Ì  Ê«·€«¡ «· À»Ì   „ ﬁ›·Â „‰ ﬁ»· «·„‰‘∆Ì‰")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"?? ?  „  À»Ì  «·—”«·Â")   
database:set(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"?? ? «‰« ·”  «œ„‰ Â‰« Ì—ÃÏ  —ﬁÌ Ì «œ„‰ À„ «⁄œ «·„Õ«Ê·Â")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"?? ? ·Ì”  ·œÌ ’·«ÕÌ… «· À»Ì  Ì—ÃÏ «· Õﬁﬁ „‰ «·’·«ÕÌ« ")  
end
end,nil) 
end
if text == "«·€«¡ «· À»Ì " and Addictive(msg) then  
if database:sismember(bot_id.."Pir3te:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"?? ? «· À»Ì  Ê«·€«¡ «· À»Ì   „ ﬁ›·Â „‰ ﬁ»· «·„‰‘∆Ì‰")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡  À»Ì  «·—”«·Â")   
database:del(bot_id.."Pir3te:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"?? ? «‰« ·”  «œ„‰ Â‰« Ì—ÃÏ  —ﬁÌ Ì «œ„‰ À„ «⁄œ «·„Õ«Ê·Â")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"?? ? ·Ì”  ·œÌ ’·«ÕÌ… «· À»Ì  Ì—ÃÏ «· Õﬁﬁ „‰ «·’·«ÕÌ« ")  
end
end,nil)
end

if text and text:match("^Ê÷⁄  ﬂ—«— (%d+)$") and Addictive(msg) then   
local Num = text:match("Ê÷⁄  ﬂ—«— (.*)")
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"?? ?  „ Ê÷⁄ ⁄œœ «· ﬂ—«— ("..Num..")")  
end 
if text and text:match("^Ê÷⁄ “„‰ «· ﬂ—«— (%d+)$") and Addictive(msg) then   
local Num = text:match("^Ê÷⁄ “„‰ «· ﬂ—«— (%d+)$")
database:hset(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"?? ?  „ Ê÷⁄ “„‰ «· ﬂ—«— ("..Num..")") 
end
if text == "÷⁄ —«»ÿ" or text == "Ê÷⁄ —«»ÿ" then
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
send(msg.chat_id_,msg.id_,"?? ? «—”· —«»ÿ «·„Ã„Ê⁄Â «Ê —«»ÿ ﬁ‰«… «·„Ã„Ê⁄Â")
database:setex(bot_id.."Pir3te:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == " ›⁄Ì· Ã·» «·—«»ÿ" or text == ' ›⁄Ì· «·—«»ÿ' then
if Addictive(msg) then  
database:set(bot_id.."Pir3te:Link_Group"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"?? ?  „  ›⁄Ì· Ã·» «·—«»ÿ «·„Ã„Ê⁄Â") 
return false  
end
end
if text == " ⁄ÿÌ· Ã·» «·—«»ÿ" or text == ' ⁄ÿÌ· «·—«»ÿ' then
if Addictive(msg) then  
database:del(bot_id.."Pir3te:Link_Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"? ?  „  ⁄ÿÌ· Ã·» —«»ÿ «·„Ã„Ê⁄Â") 
return false end
end
if text == "«·—«»ÿ" then 
local status_Link = database:get(bot_id.."Pir3te:Link_Group"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"? ? Ã·» «·—«»ÿ „⁄ÿ·") 
return false  
end
local link = database:get(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_)            
if link then                              
send(msg.chat_id_,msg.id_,"*?? ?  Group Link ~*\n ["..link.."]")                          
else                
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ —«»ÿ «—”· ÷⁄ —«»ÿ")              
end            
end
if text == "„”Õ «·—«»ÿ" or text == "Õ–› «·—«»ÿ" then
if Addictive(msg) then     
send(msg.chat_id_,msg.id_,"? ?  „ „”Õ «·—«»ÿ ")           
database:del(bot_id.."Pir3te:Private:Group:Link"..msg.chat_id_) 
return false      
end
return false  
end
if text and text:match("^÷⁄ ’Ê—Â") and Addictive(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^Ê÷⁄ ’Ê—Â") and Addictive(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id.."Pir3te:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì «·’Ê—Â") 
return false
end
if text == "Õ–› «·’Ê—Â" or text == "„”Õ «·’Ê—Â" then 
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"? ?  „ «“«·… ’Ê—… «·„Ã„Ê⁄Â") 
end
return false  
end
if text == "÷⁄ Ê’›" or text == "Ê÷⁄ Ê’›" then  
if Addictive(msg) then
database:setex(bot_id.."Pir3te:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«‰ «·Ê’›")
end
return false  
end
if text == "÷⁄  —ÕÌ»" or text == "Ê÷⁄  —ÕÌ»" then  
if Addictive(msg) then
database:setex(bot_id.."Pir3te:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "?? ? «—”· ·Ì «· —ÕÌ» «·«‰"
tt = "\n?? ?  ” ÿÌ⁄ «÷«›… „«Ì·Ì !\n?? ? œ«·… ⁄—÷ «·«”„ ª{`name`}\n?? ? œ«·… ⁄—÷ «·„⁄—› ª{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "«· —ÕÌ»" and Addictive(msg) then 
if database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "? ? ·„ Ì „  ⁄ÌÌ‰  —ÕÌ» ··„Ã„Ê⁄Â"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == " ›⁄Ì· «· —ÕÌ»" and Addictive(msg) then  
database:set(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"? ?  „  ›⁄Ì·  —ÕÌ» «·„Ã„Ê⁄Â") 
return false  
end
if text == " ⁄ÿÌ· «· —ÕÌ»" and Addictive(msg) then  
database:del(bot_id.."Pir3te:Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"? ?  „  ⁄ÿÌ·  —ÕÌ» «·„Ã„Ê⁄Â") 
return false  
end
if text == "„”Õ «· —ÕÌ»" or text == "Õ–› «· —ÕÌ»" then 
if Addictive(msg) then
database:del(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"? ?  „ «“«·…  —ÕÌ» «·„Ã„Ê⁄Â") 
end
return false  
end

if text == "„”Õ ﬁ«∆„Â «·„‰⁄" and Addictive(msg) then   
local list = database:smembers(bot_id.."Pir3te:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Pir3te:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."Pir3te:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"? ?  „ „”Õ ﬁ«∆„Â «·„‰⁄")  
end

if text == "ﬁ«∆„Â «·„‰⁄" and Addictive(msg) then   
local list = database:smembers(bot_id.."Pir3te:List:Filter"..msg.chat_id_)  
t = "\n? ? ﬁ«∆„… «·„‰⁄ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do  
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." ª {"..Pir3te_Msg.."}\n"    
end  
if #list == 0 then  
t = "?? ? ·« ÌÊÃœ ﬂ·„«  „„‰Ê⁄Â"  
end  
send(msg.chat_id_, msg.id_,t)  
end  
if text and text == "„‰⁄" and msg.reply_to_message_id_ == 0 and Addictive(msg) then       
send(msg.chat_id_, msg.id_,"?? ? «—”· «·ﬂ·„Â ·„‰⁄Â«")  
database:set(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"?? ? «—”· «· Õ–Ì— ⁄‰œ «—”«· «·ﬂ·„Â")  
database:set(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."Pir3te:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."Pir3te:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_,"?? ?  „ „‰⁄ «·ﬂ·„Â „⁄ «· Õ–Ì—")  
database:del(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."Pir3te:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."Pir3te:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."Pir3te:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "«·€«¡ „‰⁄" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
send(msg.chat_id_, msg.id_,"?? ? «—”· «·ﬂ·„Â «·«‰")  
database:set(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ „‰⁄Â« ")  
database:del(bot_id.."Pir3te:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Pir3te:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."Pir3te:List:Filter"..msg.chat_id_,text)  
return false  end  
end

if text == "„”Õ «·»Ê « " and Addictive(msg) then 
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "?? ? ·«  ÊÃœ »Ê «  ›Ì «·„Ã„Ê⁄Â")
else
local t = "?? ? ⁄œœ «·»Ê «  Â‰« >> {"..c.."}\n?? ? ⁄œœ «·»Ê «  «· Ì ÂÌ «œ„‰ >> {"..x.."}\n?? ?  „ ÿ—œ >> {"..(c - x).."} „‰ «·»Ê « "
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("ﬂ‘› «·»Ê « ") and Addictive(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n? ? ﬁ«∆„… «·»Ê «  «·„ÊÃÊœÂ \n? ? ? ? ? ? ? ? ? \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = " {?}"
end
text = text..">> [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "?? ? ·«  ÊÃœ »Ê «  ›Ì «·„Ã„Ê⁄Â")
return false 
end
if #admins == i then 
local a = "\n? ? ? ? ? ? ? ? ? \n?? ? ⁄œœ «·»Ê «  «· Ì Â‰« >> {"..n.."} »Ê \n"
local f = "?? ? ⁄œœ «·»Ê «  «· Ì ÂÌ «œ„‰ >> {"..t.."}\n?? ? „·«Õ÷Â ⁄·«„… «· (?)  ⁄‰Ì «‰ «·»Ê  «œ„‰ \n??"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Pir3te:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "«·€«¡" then 
send(msg.chat_id_, msg.id_, "?? ?  „ «·€«¡ Õ›Ÿ «·ﬁÊ«‰Ì‰") 
database:del(bot_id.."Pir3te:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Pir3te:Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ ﬁÊ«‰Ì‰ «·„Ã„Ê⁄Â") 
database:del(bot_id.."Pir3te:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "÷⁄ ﬁÊ«‰Ì‰" or text == "Ê÷⁄ ﬁÊ«‰Ì‰" then 
if Addictive(msg) then
database:setex(bot_id.."Pir3te:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"?? ? «—”· ·Ì «·ﬁÊ«‰Ì‰ «·«‰")  
end
end
if text == "„”Õ «·ﬁÊ«‰Ì‰" or text == "Õ–› «·ﬁÊ«‰Ì‰" then  
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"?? ?  „ «“«·… ﬁÊ«‰Ì‰ «·„Ã„Ê⁄Â")  
database:del(bot_id.."Pir3te:Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "«·ﬁÊ«‰Ì‰" then 
local Set_Rules = database:get(bot_id.."Pir3te:Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"?? ? ·«  ÊÃœ ﬁÊ«‰Ì‰ Â‰«")   
end    
end

if text == "«·«Ê«„— «·„÷«›Â" and Constructor(msg) then
local list = database:smembers(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_.."")
t = "?? ? ﬁ«∆„Â «·«Ê«„— «·„÷«›Â  \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "?? ? ·«  ÊÃœ «Ê«„— «÷«›ÌÂ"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "Õ–› «·«Ê«„— «·„÷«›Â" or text == "„”Õ «·«Ê«„— «·„÷«›Â" then
if Constructor(msg) then 
local list = database:smembers(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"?? ?  „ „”Õ Ã„Ì⁄ «·«Ê«„— «· Ì  „ «÷«› Â«")  
end
end
if text == "«÷› «„—" and Constructor(msg) then
database:set(bot_id.."Pir3te:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"?? ? «·«‰ «—”· ·Ì «·«„— «·ﬁœÌ„ ..")  
return false
end
if text == "Õ–› «„—" or text == "„”Õ «„—" then 
if Constructor(msg) then
database:set(bot_id.."Pir3te:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"?? ? «—”· «·«„— «·–Ì ﬁ„ »Ê÷⁄Â »œ·« ⁄‰ «·ﬁœÌ„")  
return false
end
end

if text == "«·’·«ÕÌ« " and Addictive(msg) then 
local list = database:smembers(bot_id.."Pir3te:Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"?? ? ·«  ÊÃœ ’·«ÕÌ«  „÷«›Â")
return false
end
t = "\n? ? ﬁ«∆„… «·’·«ÕÌ«  «·„÷«›Â \n?????????????\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Pir3te:Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "„”Õ «·’·«ÕÌ« " then
local list = database:smembers(bot_id.."Pir3te:Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Pir3te:Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."Pir3te:Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"?? ?  „ „”Õ «·’·«ÕÌ« ")
end
if text and text:match("^«÷› ’·«ÕÌÂ (.*)$") and Addictive(msg) then 
ComdNew = text:match("^«÷› ’·«ÕÌÂ (.*)$")
database:set(bot_id.."Pir3te:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Pir3te:Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Pir3te:Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "?? ? «—”· ‰Ê⁄ «·’·«ÕÌÂ ??\n?? ? (⁄÷Ê ~ „„Ì“  ~ «œ„‰  ~ „œÌ— )") 
end
if text and text:match("^„”Õ ’·«ÕÌÂ (.*)$") and Addictive(msg) or text and text:match("^Õ–› ’·«ÕÌÂ (.*)$") and Addictive(msg) then 
ComdNew = text:match("^„”Õ ’·«ÕÌÂ (.*)$") or text:match("^Õ–› ’·«ÕÌÂ (.*)$")
database:del(bot_id.."Pir3te:Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "? ?  „ „”Õ «·’·«ÕÌÂ ") 
end
if database:get(bot_id.."Pir3te:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^«·€«¡$") then 
send(msg.chat_id_, msg.id_,"? ?  „ «·€«¡ «·«„— ") 
database:del(bot_id.."Pir3te:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "„œÌ—" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"?? ? «—”· ‰Ê⁄ «·’·«ÕÌÂ „—Â «Œ—\n?? ?  ” ÿÌ⁄ «÷«›… ’·«ÕÌÂ (⁄÷Ê ~ „„Ì“  ~ «œ„‰ )") 
return false
end
end
if text == "«œ„‰" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"?? ? «—”· ‰Ê⁄ «·’·«ÕÌÂ „—Â «Œ—\n?? ?  ” ÿÌ⁄ «÷«›… ’·«ÕÌÂ ( ⁄÷Ê ~ „„Ì“ )") 
return false
end
end
if text == "„„Ì“" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"?? ? «—”· ‰Ê⁄ «·’·«ÕÌÂ „—Â «Œ—\n?? ?  ” ÿÌ⁄ «÷«›… ’·«ÕÌÂ ( ⁄÷Ê )") 
return false
end
end
if text == "„œÌ—" or text == "«œ„‰" or text == "„„Ì“" or text == "⁄÷Ê" then
local textn = database:get(bot_id.."Pir3te:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Pir3te:Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "?? ?  „ «÷«›… ’·«ÕÌ… ") 
database:del(bot_id.."Pir3te:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^ €Ì— —œ «·„ÿÊ— (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·„ÿÊ— (.*)$") 
database:set(bot_id.."Pir3te:Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·„ÿÊ— «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·„‰‘∆ «·«”«”Ì (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·„‰‘∆ «·«”«”Ì (.*)$") 
database:set(bot_id.."Pir3te:BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·„‰‘∆ «·«”«”Ì «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·„‰‘∆ (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·„‰‘∆ (.*)$") 
database:set(bot_id.."Pir3te:Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·„‰‘∆ «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·„œÌ— (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·„œÌ— (.*)$") 
database:set(bot_id.."Pir3te:Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·„œÌ— «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·«œ„‰ (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·«œ„‰ (.*)$") 
database:set(bot_id.."Pir3te:Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·«œ„‰ «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·„„Ì“ (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·„„Ì“ (.*)$") 
database:set(bot_id.."Pir3te:Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·„„Ì“ «·Ï ª "..Teext)
end
if text and text:match("^ €Ì— —œ «·⁄÷Ê (.*)$") and Owner(msg) then
local Teext = text:match("^ €Ì— —œ «·⁄÷Ê (.*)$") 
database:set(bot_id.."Pir3te:Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"?? ?   „  €Ì— —œ «·⁄÷Ê «·Ï ª "..Teext)
end


if text == ("„”Õ —œÊœ «·„œÌ—") and Owner(msg) then
local list = database:smembers(bot_id.."Pir3te:List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
database:del(bot_id.."Pir3te:Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
database:del(bot_id.."Pir3te:Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id.."Pir3te:List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"?? ?  „ „”Õ —œÊœ «·„œÌ—")
end
if text == ("—œÊœ «·„œÌ—") and Owner(msg) then
local list = database:smembers(bot_id.."Pir3te:List:Manager"..msg.chat_id_.."")
text = "?? ? ﬁ«∆„Â —œÊœ «·„œÌ— \n? ? ? ? ? ? ? ? ?\n"
for k,v in pairs(list) do
if database:get(bot_id.."Pir3te:Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "„ Õ—ﬂÂ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "»’„Â ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "„·’ﬁ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "—”«·Â ?"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "’Ê—Â ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "›ÌœÌÊ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "„·› ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "«€‰ÌÂ ??"
end
text = text..""..k..">> ("..v..") ª {"..db.."}\n"
end
if #list == 0 then
text = "?? ? ·« ÌÊÃœ —œÊœ ··„œÌ—"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Pir3te:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if database:get(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Pir3te:Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Pir3te:Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Pir3te:Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Pir3te:Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Pir3te:Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Pir3te:Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Pir3te:Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·—œ »‰Ã«Õ")
return false  
end  
end
if text == "«÷› —œ" and Owner(msg) then
send(msg.chat_id_, msg.id_,"?? ? «—”· «·ﬂ·„Â «· —Ì  —Ìœ «÷«› Â«")
database:set(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Õ–› —œ" and Owner(msg) then
send(msg.chat_id_, msg.id_,"?? ? «—”· «·ﬂ·„Â «· —Ì  —Ìœ Õ–›Â«")
database:set(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '?? ? «·«‰ «—”· «·—œ «·–Ì  —Ìœ «÷«› Â \n?? ?  ﬁœ ÌﬂÊ‰ („·› - ›œÌÊ - ‰’ - „·’ﬁ - »’„Â - „ Õ—ﬂÂ )\n? ?  Ì„ﬂ‰ﬂ «÷«›Â «·Ï «·‰’ :\n- `#username` > «”„ «·„” Œœ„\n- `#msgs` > ⁄œœ —”«∆· «·„” Œœ„\n- `#name` > «”„ «·„” Œœ„\n- `#id` > «ÌœÌ «·„” Œœ„\n- `#stast` > „Êﬁ⁄ «·„” Œœ„ \n- `#edit` > ⁄œœ «·”Õﬂ«  ')
database:set(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Pir3te:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."Pir3te:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."Pir3te:List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"?? ?  „ «“«·… «·—œ „‰ ﬁ«∆„Â «·—œÊœ")
database:del(bot_id.."Pir3te:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."Pir3te:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Pir3te:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Pir3te:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Pir3te:List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Pir3te:Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Pir3te:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Pir3te:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Pir3te:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Pir3te:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
local Text = database:get(bot_id.."Pir3te:Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Pir3te:Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Pir3te:Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Pir3te:Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Pir3te:Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or '·« ÌÊÃœ')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr)
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("„”Õ —œÊœ «·„ÿÊ—") and DevPir3te(msg) then 
local list = database:smembers(bot_id.."Pir3te:List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."Pir3te:Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Pir3te:Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Pir3te:Add:Rd:Sudo:stekr"..v)     
database:del(bot_id.."Pir3te:Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Pir3te:Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Pir3te:Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Pir3te:Add:Rd:Sudo:File"..v)
database:del(bot_id.."Pir3te:Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."Pir3te:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"?? ?  „ „”Õ —œÊœ «·„ÿÊ—")
end
if text == ("—œÊœ «·„ÿÊ—") and DevPir3te(msg) then 
local list = database:smembers(bot_id.."Pir3te:List:Rd:Sudo")
text = "\n? ? ﬁ«∆„… —œÊœ «·„ÿÊ— \n? ? ? ? ? ? ? ? ?\n"
for k,v in pairs(list) do
if database:get(bot_id.."Pir3te:Add:Rd:Sudo:Gif"..v) then
db = "„ Õ—ﬂÂ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:vico"..v) then
db = "»’„Â ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:stekr"..v) then
db = "„·’ﬁ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:Text"..v) then
db = "—”«·Â ?"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:Photo"..v) then
db = "’Ê—Â ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:Video"..v) then
db = "›ÌœÌÊ ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:File"..v) then
db = "„·› ??"
elseif database:get(bot_id.."Pir3te:Add:Rd:Sudo:Audio"..v) then
db = "«€‰ÌÂ ??"
end
text = text..""..k.." >> ("..v..") ª {"..db.."}\n"
end
if #list == 0 then
text = "?? ? ·« ÌÊÃœ —œÊœ ··„ÿÊ—"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Pir3te:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."Pir3te:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Pir3te:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Pir3te:Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Pir3te:Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Pir3te:Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Pir3te:Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Pir3te:Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Pir3te:Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Pir3te:Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Pir3te:Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"?? ?  „ Õ›Ÿ «·—œ »‰Ã«Õ")
return false  
end  
end

if text == "«÷› —œ ··ﬂ·" and DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ?  «—”· «·ﬂ·„Â «· —Ì  —Ìœ «÷«› Â«")
database:set(bot_id.."Pir3te:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Õ–› —œ ··ﬂ·" and DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ?  «—”· «·ﬂ·„Â «· —Ì  —Ìœ Õ–›Â«")
database:set(bot_id.."Pir3te:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Pir3te:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '?? ? «·«‰ «—”· «·—œ «·–Ì  —Ìœ «÷«› Â \n?? ?  ﬁœ ÌﬂÊ‰ („·› - ›œÌÊ - ‰’ - „·’ﬁ - »’„Â - „ Õ—ﬂÂ )\n? ?  Ì„ﬂ‰ﬂ «÷«›Â «·Ï «·‰’ :\n- `#username` > «”„ «·„” Œœ„\n- `#msgs` > ⁄œœ —”«∆· «·„” Œœ„\n- `#name` > «”„ «·„” Œœ„\n- `#id` > «ÌœÌ «·„” Œœ„\n- `#stast` > „Êﬁ⁄ «·„” Œœ„ \n- `#edit` > ⁄œœ «·”Õﬂ«  ')
database:set(bot_id.."Pir3te:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."Pir3te:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."Pir3te:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Pir3te:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"?? ?  „ «“«·… «·—œ „‰ ﬁ«∆„Â —œÊœ «·„ÿÊ—")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..'Pir3te:'..v..text)
end
database:del(bot_id.."Pir3te:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Pir3te:List:Rd:Sudo", text)
return false
end
end

if text and not database:get(bot_id.."Pir3te:Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'Pir3te:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Pir3te:Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Pir3te:Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Pir3te:Add:Rd:Sudo:stekr"..text)     
local Text = database:get(bot_id.."Pir3te:Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Pir3te:Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Pir3te:Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Pir3te:Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Pir3te:Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or '·« ÌÊÃœ')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'ÿ—œ «·„Õ–Ê›Ì‰' or text == '„”Õ «·„Õ–Ê›Ì‰' then  
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == true then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'? ?  „ ÿ—œ «·Õ”«»«  «·„Õ–Ê›Â')
end,nil)
end
end

if text == " ›⁄Ì· —œÊœ «·„œÌ—" and Owner(msg) then   
database:del(bot_id.."Pir3te:Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"?? ?  „  ›⁄Ì· —œÊœ «·„œÌ—") 
end
if text == " ⁄ÿÌ· —œÊœ «·„œÌ—" and Owner(msg) then  
database:set(bot_id.."Pir3te:Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"?? ?  „  ⁄ÿÌ· —œÊœ «·„œÌ—" ) 
end
if text == " ›⁄Ì· —œÊœ «·„ÿÊ—" and Owner(msg) then   
database:del(bot_id.."Pir3te:Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"?? ?  „  ›⁄Ì· —œÊœ «·„ÿÊ—" ) 
end
if text == " ⁄ÿÌ· —œÊœ «·„ÿÊ—" and Owner(msg) then  
database:set(bot_id.."Pir3te:Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"?? ?  „  ⁄ÿÌ· —œÊœ «·„ÿÊ—" ) 
end

if text == (" ‰“Ì· «·ﬂ·") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
function Function_Pir3te(extra, result, success)
if tonumber(SUDO) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"?? ?  ·«  ” ÿÌ⁄  ‰“Ì· «·„ÿÊ— «·«”«”Ì")
return false 
end
if database:sismember(bot_id.."Pir3te:Sudo:User",result.sender_user_id_) then
dev = "«·„ÿÊ— °" else dev = "" end
if database:sismember(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "„‰‘∆ «”«”Ì °" else crr = "" end
if database:sismember(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "„‰‘∆ °" else cr = "" end
if database:sismember(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_) then
own = "„œÌ— °" else own = "" end
if database:sismember(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "«œ„‰ °" else mod = "" end
if database:sismember(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "„„Ì“ °" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n?? ?  „  ‰“Ì· «·‘Œ’ „‰ «·— » «· «·ÌÂ \n?? ?  { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\n?? ? ·Ì” ·œÌÂ — » Õ Ï «” ÿÌ⁄  ‰“Ì·Â \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."Pir3te:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Pir3te:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Constructor"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Pir3te:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Pir3te:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Pir3te:Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
end
if text == " «ﬂ ··ﬂ·" and Addictive(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,Mohmad)
local t = "\n??û??û??  ?  ﬁ«∆„Â «·«⁄÷«¡   °\n????? ? ? ????? \n"
x = 0
local list = Mohmad.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id.."Pir3te:User:Name"..v.user_id_) then
t = t.."|"..x.."|~? {[@"..database:get(bot_id.."Pir3te:User:Name"..v.user_id_).."]}\n"
else
t = t.."|"..x.."|~? {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end

if text == "— » Ì" then
local rtp = Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"?? ?  — » ﬂ ›Ì «·»Ê  ª "..rtp)
end
if text == "«”„Ì"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "?? ?  «”„ﬂ «·«Ê· ? {`"..(result.first_name_).."`}"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "?? ?  «”„ﬂ «·À«‰Ì ? {`"..result.last_name_.."`}" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("⁄œœ «·ﬂ—Ê»") and Addictive(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"?? ?  «·»Ê  ·Ì” «œ„‰ Â‰« \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local Mohmad = "?? ?  ⁄œœ «·«œ„‰ÌÂ : "..data.administrator_count_..
"\n\n?? ?  ⁄œœ «·„ÿ—ÊœÌ‰ : "..data.kicked_count_..
"\n\n?? ?  ⁄œœ «·«⁄÷«¡ : "..data.member_count_..
"\n\n?? ?  ⁄œœ —”«∆· «·ﬂ—Ê» : "..(msg.id_/2097152/0.5)..
"\n\n?? ?  «”„ «·„Ã„Ê⁄Â : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, Mohmad) 
end,nil)
end,nil)
end 
if text == "«ÿ—œ‰Ì" or text == "ÿ—œ‰Ì" then
if not database:get(bot_id.."Pir3te:Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n?? ?  ⁄–—« ·« «” ÿÌ⁄ ÿ—œ ( "..Get_Rank(msg.sender_user_id_,msg.chat_id_).." )")
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"?? ?  ·Ì” ·œÌ ’·«ÕÌ… ÕŸ— «·„” Œœ„Ì‰ Ì—ÃÏ  ›⁄Ì·Â« !") 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,"?? ?  «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !") 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,"?? ?  ⁄–—« ·« «” ÿÌ⁄ ÿ—œ «œ„‰Ì… «·„Ã„Ê⁄Â") 
return false  
end
if data and data.ID and data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"?? ?   „ ÿ—œﬂ „‰ «·„Ã„Ê⁄Â ") 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,"?? ?  «„— «ÿ—œ‰Ì  „  ⁄ÿÌ·Â „‰ ﬁ»· «·„œ—«¡ ") 
end
end

if text == " ›⁄Ì· «ÿ—œ‰Ì" and Owner(msg) then   
database:del(bot_id.."Pir3te:Kick:Me"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,Text) 
end
if text == " ⁄ÿÌ· «ÿ—œ‰Ì" and Owner(msg) then  
database:set(bot_id.."Pir3te:Kick:Me"..msg.chat_id_,true)  
Text = "\n?? ?  „  ⁄ÿÌ· «„— «ÿ—œ‰Ì"
send(msg.chat_id_, msg.id_,Text) 
end

if text and text:match("^—›⁄ «·ﬁÌÊœ @(.*)") and Owner(msg) then 
local username = text:match("^—›⁄ «·ﬁÌÊœ @(.*)") 
function Function_Pir3te(extra, result, success)
if result.id_ then
if DevPir3te(msg) then
database:srem(bot_id.."Pir3te:GBan:User",result.id_)
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.id_)
usertext = "\n?? ?  «·⁄÷Ê ª ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\n?? ?   „ «·€«¡ «·ﬁÌÊœ ⁄‰Â"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\n?? ?   „ «·€«¡ «·ﬁÌÊœ ⁄‰Â")  
end
else
Text = "?? ?  «·„⁄—› €·ÿ"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
end
if text == "—›⁄ «·ﬁÌÊœ" and Owner(msg) then
function Function_Pir3te(extra, result, success)
if DevPir3te(msg) then
database:srem(bot_id.."Pir3te:GBan:User",result.sender_user_id_)
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\n?? ?   „ «·€«¡ «·ﬁÌÊœ ⁄‰Â")  
else
database:srem(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\n?? ?  «·⁄÷Ê ª ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\n?? ?   „ «·€«¡ «·ﬁÌÊœ ⁄‰Â"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
end
if text and text:match("^ﬂ‘› «·ﬁÌÊœ @(.*)") and Owner(msg) then 
local username = text:match("^ﬂ‘› «·ﬁÌÊœ @(.*)") 
function Function_Pir3te(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.id_) then
Muted = "„ﬂ Ê„"
else
Muted = "€Ì— „ﬂ Ê„"
end
if database:sismember(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.id_) then
Ban = "„ÕŸÊ—"
else
Ban = "€Ì— „ÕŸÊ—"
end
if database:sismember(bot_id.."Pir3te:GBan:User",result.id_) then
GBan = "„ÕŸÊ— ⁄«„"
else
GBan = "€Ì— „ÕŸÊ— ⁄«„"
end
send(msg.chat_id_, msg.id_,"?? ?  «·ÕŸ— «·⁄«„ ª "..GBan.."\n?? ?  «·ÕŸ— ª "..Ban.."\n?? ?  «·ﬂ „ ª "..Muted)
else
send(msg.chat_id_, msg.id_,"?? ?  «·„⁄—› €·ÿ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
end

if text == "ﬂ‘› «·ﬁÌÊœ" and Owner(msg) then 
function Function_Pir3te(extra, result, success)
if database:sismember(bot_id.."Pir3te:Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "„ﬂ Ê„"
else
Muted = "€Ì— „ﬂ Ê„"
end
if database:sismember(bot_id.."Pir3te:Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "„ÕŸÊ—"
else
Ban = "€Ì— „ÕŸÊ—"
end
if database:sismember(bot_id.."Pir3te:GBan:User",result.sender_user_id_) then
GBan = "„ÕŸÊ— ⁄«„"
else
GBan = "€Ì— „ÕŸÊ— ⁄«„"
end
Textt = "?? ?  «·ÕŸ— «·⁄«„ ª "..GBan.."\n?? ?  «·ÕŸ— ª "..Ban.."\n?? ?  «·ﬂ „ ª "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
end

if text and text:match("^÷⁄ «”„ (.*)") and Owner(msg) or text and text:match("^Ê÷⁄ «”„ (.*)") and Owner(msg) then 
local Name = text:match("^÷⁄ «”„ (.*)") or text:match("^Ê÷⁄ «”„ (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"?? ?  «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"?? ?  ·Ì”  ·œÌ ’·«ÕÌ…  €Ì— «”„ «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_,msg.id_,"?? ?   „  €ÌÌ— «”„ «·„Ã„Ê⁄Â «·Ï {["..Name.."]}")  
end
end,nil) 
end

if text ==("—›⁄ «·«œ„‰ÌÂ") and Owner(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Pir3te:Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Pir3te:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"?? ?  ·«  ÊÃœ «œ„‰Ì… ·Ì „ —›⁄Â„") 
else
send(msg.chat_id_, msg.id_,"?? ?   „   —ﬁÌ… { "..num2.." } „‰ «œ„‰Ì… «·„Ã„Ê⁄Â") 
end
end,nil)   
end
if text ==("«·„‰‘∆") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"?? ?  Õ”«» «·„‰‘∆ „Õ–Ê›")
return false  
end
local UserName = (b.username_ or "PIRATE_TE3M")
send(msg.chat_id_, msg.id_,"?? ? „‰‘∆ «·„Ã„Ê⁄Â ~ ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text ==("—›⁄ «·„‰‘∆") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"?? ? Õ”«» «·„‰‘∆ „Õ–Ê›")
return false  
end
local UserName = (b.username_ or "PIRATE_TE3M")
send(msg.chat_id_, msg.id_,"?? ?  „  —ﬁÌ… „‰‘∆ «·„Ã„Ê⁄Â ~ ["..b.first_name_.."](T.me/"..UserName..")")  
database:sadd(bot_id.."Pir3te:Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end

if text == "€«œ—" then 
if DevBot(msg) and not database:get(bot_id.."Pir3te:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"?? ?   „ „€«œ—… «·„Ã„Ê⁄Â") 
database:srem(bot_id.."Pir3te:Chek:Groups",msg.chat_id_)  
end
return false  
end
if text and text:match("^€«œ— (-%d+)$") then
local GP_ID = {string.match(text, "^(€«œ—) (-%d+)$")}
if DevBot(msg) and not database:get(bot_id.."Pir3te:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"?? ?   „ „€«œ—… «·„Ã„Ê⁄Â") 
send(GP_ID[2], 0,"?? ?   „ „€«œ—… «·„Ã„Ê⁄Â »«„— „‰ „ÿÊ— «·»Ê ") 
database:srem(bot_id.."Pir3te:Chek:Groups",GP_ID[2])  
return false 
end
end
if text == " ›⁄Ì· «·„€«œ—Â" and DevPir3te(msg) then   
database:del(bot_id.."Pir3te:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"?? ?  „  ›⁄Ì· „€«œ—… «·»Ê ") 
return false 
end
if text == " ⁄ÿÌ· «·„€«œ—Â" and DevPir3te(msg) then  
database:set(bot_id.."Pir3te:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "?? ?  „  ⁄ÿÌ· „€«œ—… «·»Ê ") 
return false 
end
if text == (database:get(bot_id.."Pir3te:Name:Bot") or "ﬁ—’«‰") then
Namebot = (database:get(bot_id.."Pir3te:Name:Bot") or "ﬁ—’«‰")
local namebot = {
"Ì—ÊÕÌ ›œ«ﬂ "..Namebot.. " ««„—‰ÌÌ?? ",
"ﬂÊ· ÕÕ»Ì»»Ì «‰ÌÌÌ?? "..Namebot,
'Â« Õ»Ì ÊÌ«ﬂ „ﬂ » ∆·”Ìœ «·ﬁÌÌœ .',
'ﬂ·»»ÌÌ ?? ',
'Â« Ì€ÊÊÕÌ ??',
'Ì’’«ﬂﬂ ﬂÊ·',
'⁄„—Ì «·Ê’Œ',
'œ«’Ìœ “Ê«Õ› ÊŒ——??',
'««⁄–—‰ÌÌ „‘€Ê· ??',
'·ÕÕ  ·ÕÕ',
" Â«Ì⁄„—  "..Namebot,
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end

if text == "»Ê " then
Namebot = (database:get(bot_id.."Pir3te:Name:Bot") or "ﬁ—’«‰")
send(msg.chat_id_, msg.id_,"«”„Ì ["..Namebot.."] ")
end
if text == "‘”„ﬂ" then
Namebot = (database:get(bot_id.."Pir3te:Name:Bot") or "ﬁ—’«‰")
send(msg.chat_id_, msg.id_,"¡·ﬂÌÊ  ["..Namebot.."] ")
end
if text == " €Ì— «”„ «·»Ê " or text == " €ÌÌ— «”„ «·»Ê " then 
if DevPir3te(msg) then
database:setex(bot_id.."Pir3te:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"?? ?  «—”· ·Ì «·«”„ «·«‰ ")  
end
return false
end

if text ==("„”Õ «·„ÿ—ÊœÌ‰") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "?? ?  Ì—ÃÏ  —ﬁÌ Ì «œ„‰ Â‰«") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"?? ?   „ «·€«¡ «·ÕŸ— ⁄‰ *~ "..num.." ~* «‘Œ«’ ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="«–«⁄Â Œ«’" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì ”Ê«¡ ~ { „·’ﬁ, „ Õ—ﬂÂ, ’Ê—Â, —”«·Â }\n?? ? ··Œ—ÊÃ «—”· «·€«¡ ") 
return false
end 
if text=="«–«⁄Â" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì ”Ê«¡ ~ { „·’ﬁ, „ Õ—ﬂÂ, ’Ê—Â, —”«·Â }\n?? ? ··Œ—ÊÃ «—”· «·€«¡ ") 
return false
end  
if text=="«–«⁄Â »«· À»Ì " and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì ”Ê«¡ ~ { „·’ﬁ, „ Õ—ﬂÂ, ’Ê—Â, —”«·Â }\n?? ? ··Œ—ÊÃ «—”· «·€«¡ ") 
return false
end  
if text=="«–«⁄Â »«· ÊÃÌÂ" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì «· ÊÃÌÂ «·«‰") 
return false
end 
if text=="«–«⁄Â »«· ÊÃÌÂ Œ«’" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì «· ÊÃÌÂ «·«‰") 
return false
end 

if text == " ›⁄Ì· «·«–«⁄Â" and DevPir3te(msg) then  
database:del(bot_id.."Pir3te:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n?? ?  „  ›⁄Ì· «·«–«⁄Â " ) 
return false
end 
if text == " ⁄ÿÌ· «·«–«⁄Â" and DevPir3te(msg) then  
database:set(bot_id.."Pir3te:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n?? ?  „  ⁄ÿÌ· «·«–«⁄Â") 
return false
end 

if text == "«·«⁄œ«œ« " and Addictive(msg) then    
if database:get(bot_id.."Pir3te:lockpin"..msg.chat_id_) then    
lock_pin = "?"
else 
lock_pin = "?"    
end
if database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "?"
else 
lock_tagservr = "?"    
end
if database:get(bot_id.."Pir3te:Lock:text"..msg.chat_id_) then    
lock_text = "?"
else 
lock_text = "?"    
end
if database:get(bot_id.."Pir3te:Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "?"
else 
lock_add = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "?"
else 
lock_join = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) then    
lock_edit = "?"
else 
lock_edit = "?"    
end
if database:get(bot_id.."Pir3te:Get:Welcome:Group"..msg.chat_id_) then
welcome = "?"
else 
welcome = "?"    
end
if database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "»«·ÿ—œ"     
elseif database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "»«· ﬁÌœ"     
elseif database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "»«·ﬂ „"           
elseif database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "»«·„”Õ"           
else     
flood = "?"     
end
if database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "?" 
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "»«· ﬁÌœ"   
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "»«·ÿ—œ"   
else
lock_photo = "?"   
end    
if database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "?" 
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "»«·ÿ—œ"    
else
lock_phon = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "del" then
lock_links = "?"
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "»«·ÿ—œ"    
else
lock_links = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "?"
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "»«·ﬂ „"   
elseif database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "»«·ÿ—œ"    
else
lock_cmds = "?"    
end
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "?"
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "»«·ÿ—œ"    
else
lock_user = "?"    
end
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "?"
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "»«·ÿ—œ"    
else
lock_hash = "?"    
end
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "?"
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "»«·ÿ—œ"    
else
lock_muse = "?"    
end 
if database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "?"
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "»«·ÿ—œ"    
else
lock_ved = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "?"
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "»«·ÿ—œ"    
else
lock_gif = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "?"
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "»«· ﬁÌœ "    
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "»«·ﬂ „ "    
elseif database:get(bot_id.."Pir3te:Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "»«·ÿ—œ"    
else
lock_ste = "?"    
end
if database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "?"
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "»«·ÿ—œ"    
else
lock_geam = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "?"
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "»«·ÿ—œ"    
else
lock_vico = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "?"
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "»«· ﬁÌœ"
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "»«·ÿ—œ"
else
lock_inlin = "?"
end
if database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "?"
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "»«·ÿ—œ"    
else
lock_fwd = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "del" then
lock_file = "?"
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "»«·ÿ—œ"    
else
lock_file = "?"    
end    
if database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "?"
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "»«·ÿ—œ"    
else
lock_self = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "?"
elseif database:get(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "»«· ﬁÌœ"   
elseif database:get(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "»«·ÿ—œ"    
else
lock_bots = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "?"
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "»«·ÿ—œ"    
else
lock_mark = "?"    
end
if database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "?"
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "»«· ﬁÌœ"    
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "»«·ﬂ „"    
elseif database:get(bot_id.."Pir3te:Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "»«·ÿ—œ"    
else
lock_spam = "?"    
end        
if not database:get(bot_id.."Pir3te:Reply:Manager"..msg.chat_id_) then
rdmder = "?"
else
rdmder = "?"
end
if not database:get(bot_id.."Pir3te:Reply:Sudo"..msg.chat_id_) then
rdsudo = "?"
else
rdsudo = "?"
end
if not database:get(bot_id.."Pir3te:Lock:ID:Bot"..msg.chat_id_)  then
idgp = "?"
else
idgp = "?"
end
if not database:get(bot_id.."Pir3te:Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "?"
else
idph = "?"
end
if not database:get(bot_id.."Pir3te:Lock:kick"..msg.chat_id_)  then
setadd = "?"
else
setadd = "?"
end
if not database:get(bot_id.."Pir3te:Lock:Add:Bot"..msg.chat_id_)  then
banm = "?"
else
banm = "?"
end
if not database:get(bot_id.."Pir3te:Kick:Me"..msg.chat_id_) then
kickme = "?"
else
kickme = "?"
end
Num_Flood = database:hget(bot_id.."Pir3te:flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\n?? ? ««⁄œ«œ«  «·„Ã„Ê⁄Â "..
"\n? ? ? ? ? ? ? ? ? "..
"\n?? ? ⁄·«„… «· {?}  ⁄‰Ì „›⁄·"..
"\n?? ? ⁄·«„… «· {?}  ⁄‰Ì „⁄ÿ·"..
"\n? ? ? ? ? ? ? ? ? "..
"\n?? ? «·—Ê«»ÿ ª "..lock_links..
"\n".."?? ? «·„⁄—›«  ª "..lock_user..
"\n".."?? ? «· «ﬂ ª "..lock_hash..
"\n".."?? ? «·»Ê «  ª "..lock_bots..
"\n".."?? ? «· ÊÃÌÂ ª "..lock_fwd..
"\n".."?? ? «· À»Ì  ª "..lock_pin..
"\n".."?? ? «·«‘⁄«—«  ª "..lock_tagservr..
"\n".."?? ? «·„«—ﬂœÊ‰ ª "..lock_mark..
"\n".."?? ? «· ⁄œÌ· ª "..lock_edit..
"\n? ? ? ? ? ? ? ? ? "..
"\n".."?? ? «·ﬂ·«Ì‘ ª "..lock_spam..
"\n".."?? ? «·ﬂÌ»Ê—œ ª "..lock_inlin..
"\n".."?? ? «·«€«‰Ì ª "..lock_vico..
"\n".."?? ? «·„ Õ—ﬂÂ ª "..lock_gif..
"\n".."?? ? «·„·›«  ª "..lock_file..
"\n".."?? ? «·œ—œ‘Â ª "..lock_text..
"\n".."?? ? «·›ÌœÌÊ ª "..lock_ved..
"\n".."?? ? «·’Ê— ª "..lock_photo..
"\n? ? ? ? ? ? ? ? ? "..
"\n".."?? ? «·’Ê  ª "..lock_muse..
"\n".."?? ? «·„·’ﬁ«  ª "..lock_ste..
"\n".."?? ? «·ÃÂ«  ª "..lock_phon..
"\n".."?? ? «·œŒÊ· ª "..lock_join..
"\n".."?? ? «·«÷«›Â ª "..lock_add..
"\n".."?? ? «·”Ì·›Ì ª "..lock_self..
"\n".."?? ? «·«·⁄«» ª "..lock_geam..
"\n".."?? ? «· ﬂ—«— ª "..flood..
"\n".."?? ? «· —ÕÌ» ª "..welcome..
"\n".."?? ? ⁄œœ «· ﬂ—«— ª "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == " ⁄ÿÌ· «Ê«„— «· Õ‘Ì‘" and Owner(msg) then    
send(msg.chat_id_, msg.id_, '? ?  „  ⁄ÿÌ· «Ê«„— «· Õ‘Ì‘')
database:set(bot_id.."Pir3te:Fun_Bots"..msg.chat_id_,"true")
end
if text == " ›⁄Ì· «Ê«„— «· Õ‘Ì‘" and Owner(msg) then    
send(msg.chat_id_, msg.id_,'? ?  „  ›⁄Ì· «Ê«„— «· Õ‘Ì‘')
database:del(bot_id.."Pir3te:Fun_Bots"..msg.chat_id_)
end

if text == ' ›⁄Ì· «·«ÌœÌ' and Owner(msg) then   
database:del(bot_id..'Pir3te:Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'? ?  „  ›⁄Ì· «·«ÌœÌ') 
end
if text == ' ⁄ÿÌ· «·«ÌœÌ' and Owner(msg) then  
database:set(bot_id..'Pir3te:Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'? ?  „  ⁄ÿÌ· «·«ÌœÌ') 
end
if text == ' ›⁄Ì· «·«ÌœÌ »«·’Ê—Â' and Owner(msg) then   
database:del(bot_id..'Pir3te:Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'? ?  „  ›⁄Ì· «·«ÌœÌ »«·’Ê—Â') 
end
if text == ' ⁄ÿÌ· «·«ÌœÌ »«·’Ê—Â' and Owner(msg) then  
database:set(bot_id..'Pir3te:Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'? ?  „  ⁄ÿÌ· «·«ÌœÌ »«·’Ê—Â') 
end
if text == ' ⁄Ì‰ «·«ÌœÌ' and Owner(msg) then
database:setex(bot_id.."Pir3te:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
?? ?  «—”· «·«‰ «·‰’
?? ?  Ì„ﬂ‰ﬂ «÷«›Â :
- `#username` > «”„ «·„” Œœ„
- `#msgs` > ⁄œœ —”«∆· «·„” Œœ„
- `#photos` > ⁄œœ ’Ê— «·„” Œœ„
- `#id` > «ÌœÌ «·„” Œœ„
- `#auto` >  ›«⁄· «·„” Œœ„
- `#stast` > „Êﬁ⁄ «·„” Œœ„ 
- `#edit` > ⁄œœ «·”Õﬂ« 
- `#game` > «·„ÃÊÂ—« 
- `#AddMem` > ⁄œœ «·ÃÂ« 
- `#Description` >  ⁄·Ìﬁ «·’Ê—Â
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'Õ–› «·«ÌœÌ' or text == '„”Õ «·«ÌœÌ' then
if Owner(msg) then
database:del(bot_id.."Pir3te:Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '?? ?  „ «“«·… ﬂ·Ì‘… «·«ÌœÌ ')
end
return false  
end 

if database:get(bot_id.."Pir3te:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == '«·€«¡' then 
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡  ⁄Ì‰ «·«ÌœÌ") 
database:del(bot_id.."Pir3te:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Pir3te:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."Pir3te:Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'?? ?  „  ⁄Ì‰ «·«ÌœÌ')    
end

if text == '«ÌœÌ' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'Pir3te:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'Pir3te:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."Pir3te:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,Mohmad,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = '·« ÌÊÃœ'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (Mohmad.total_count_ or 0)
local Texting = {
'Ì⁄‰Ì «·Êﬂ «·“Ì‰Â ????û????',
"’«—·ﬂ ‘ﬂœ „Œ·ÌÂ ",
"››Ê› ﬁ‘ÿÂ ????",
" Œ·Ì‰Ì??",
"Ê›«··Â ????",
"ﬂ‘ŒÂ »—» ????",
"œ€Ì—Â ‘»Ì Â– ??",
"⁄„—Ì «·Õ·ÊÌ‰ ??",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."Pir3te:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'Pir3te:Lock:ID:Bot:Photo'..msg.chat_id_) then
if Mohmad.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,Mohmad.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,Mohmad.photos_[0].sizes_[1].photo_.persistent_id_,'?? '..Description..'\n?? «ÌœÌﬂ -  '..Id..'\n?? „⁄—›‹ﬂ -'..UserName_User..'\n?? — ‹»‹‹ ﬂ -'..Status_Gps..'\n?? —”«∆·ﬂ - '..NumMsg..'\n??  ⁄œÌ·« ﬂ - '..message_edit..' \n??  ›«⁄·‹ﬂ - '..TotalMsg..'\n?? „ÃÊÂ—« ﬂ -'..Num_Games)
end
else
send(msg.chat_id_, msg.id_,'?? ·Ì” ·œÌﬂ ’Ê—Â ?? ø'..'\n*?? «ÌœÌﬂ - '..Id..'\n?? ? „⁄—›‹ﬂ -* ['..UserName_User..']*\n??— ‹»‹‹ ﬂ -'..Status_Gps..'\n?? —”«∆·ﬂ - '..NumMsg..'\n??  ⁄œÌ·« ﬂ - '..message_edit..' \n??  ›«⁄·‹ﬂ - '..TotalMsg..'\n?? „ÃÊÂ—« ﬂ -'..Num_Games..'*') 
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
send(msg.chat_id_, msg.id_,'['..get_id..']') 
else
send(msg.chat_id_, msg.id_,'\n*?? «ÌœÌﬂ - '..Id..'\n?? „⁄—›‹ﬂ -* ['..UserName_User..']*\n?? — ‹»‹‹ ﬂ -'..Status_Gps..'\n?? —”«∆·ﬂ - '..NumMsg..'\n??  ⁄œÌ·« ﬂ -  '..message_edit..' \n??  ›«⁄·‹ﬂ - '..TotalMsg..'\n?? „ÃÊÂ—« ﬂ -'..Num_Games..'*')
end
end
end,nil)   
end,nil)   
end
end
if text and text:match('^ ‰ŸÌ› (%d+)$') and Addictive(msg) then    
local Number = tonumber(text:match('^ ‰ŸÌ› (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'?? ? ·«  ” ÿÌ⁄  ‰÷Ì› «ﬂÀ— „‰ *~ 1000* —”«·Â') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'?? ?  „  ‰ŸÌ› *~ '..Number..'* —”«·Â .')  
end

if text == '«ÌœÌ' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'Pir3te:Lock:ID:Bot'..msg.chat_id_) then
function Function_Pir3te(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'?? ?  «·Õ”«» „Õ–Ê› ·«  ÊÃœ „⁄·Ê„« Â ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = '·« ÌÊÃœ'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*?? ? «ÌœÌÂ - '..Id..'\n?? ? —”«∆·Â - '..NumMsg..'\n?? ? „⁄—›Â - *['..UserName_User..']*\n?? ?  ›«⁄·Â - '..TotalMsg..'\n?? ? — » Â - '..Status_Gps..'\n? ?  ⁄œÌ·« Â - '..message_edit..'\n?? ? ÃÂ« Â - '..Add_Mem..'*') 
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Pir3te, nil)
return false
end

if text and text:match("^«ÌœÌ @(.*)$") and not database:get(bot_id..'Pir3te:Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^«ÌœÌ @(.*)$")
function Function_Pir3te(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = '·« ÌÊÃœ'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*?? «ÌœÌÂ - '..Id..'\n?? —”«∆·Â - '..NumMsg..'\n?? „⁄—›Â - *['..UserName_User..']*\n??  ›«⁄·Â - '..TotalMsg..'\n?? — » Â - '..Status_Gps..'\n??  ⁄œÌ·« Â - '..message_edit..'\n?? ÃÂ« Â - '..Add_Mem..'*') 
end,nil)   
else
send(msg.chat_id_, msg.id_,'?? ? ·« ÌÊÃœ Õ”«» »Â«–« «·„⁄—›')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Pir3te, nil)
return false
end
if text == "”„«Ì·« " or text == "”„«Ì·" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","??","????","?","??","??","??","??","??","??","??","??","??","??","??","??","??","??","?","??","??","??","??"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ìœ“ Â«–« «·”„«Ì· ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ ”„«Ì· , ”„«Ì·«  }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "«·«”—⁄" or tect == " — Ì»" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"”ÕÊ—","”Ì«—Â","«” ﬁ»«·","ﬁ‰›Â","«Ì›Ê‰","»“Ê‰Â","„ÿ»Œ","ﬂ—” Ì«‰Ê","œÃ«ÃÂ","„œ—”Â","«·Ê«‰","€—›Â","À·«ÃÂ","ﬂÂÊÂ","”›Ì‰Â","«·⁄—«ﬁ","„ÕÿÂ","ÿÌ«—Â","—«œ«—","„‰“·","„” ‘›Ï","ﬂÂ—»«¡"," ›«ÕÂ","«Œÿ»Êÿ","”·„Ê‰","›—‰”«","»— ﬁ«·Â"," ›«Õ","„ÿ—ﬁÂ","» Ì Â","·Â«‰Â","‘»«ﬂ","»«’","”„ﬂÂ","–»«»"," ·›«“","Õ«”Ê»","«‰ —‰Ì ","”«ÕÂ","Ã”—"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"”ÕÊ—","” — Ê Õ")
name = string.gsub(name,"”Ì«—Â","Â — ” Ì «")
name = string.gsub(name,"«” ﬁ»«·","· » «   ﬁ ” «")
name = string.gsub(name,"ﬁ‰›Â","Â ﬁ ‰ ›")
name = string.gsub(name,"«Ì›Ê‰","Ê ‰ › «")
name = string.gsub(name,"»“Ê‰Â","“ Ê Â ‰")
name = string.gsub(name,"„ÿ»Œ","Œ » ÿ „")
name = string.gsub(name,"ﬂ—” Ì«‰Ê","”   « ‰ Ê ﬂ — Ì")
name = string.gsub(name,"œÃ«ÃÂ","Ã Ã « œ Â")
name = string.gsub(name,"„œ—”Â","Â „ œ — ”")
name = string.gsub(name,"«·Ê«‰","‰ « Ê « ·")
name = string.gsub(name,"€—›Â","€ Â — ›")
name = string.gsub(name,"À·«ÃÂ","Ã Â   · «")
name = string.gsub(name,"ﬂÂÊÂ","Â ﬂ Â Ê")
name = string.gsub(name,"”›Ì‰Â","Â ‰ › Ì ”")
name = string.gsub(name,"«·⁄—«ﬁ","ﬁ ⁄ « · — «")
name = string.gsub(name,"„ÕÿÂ","Â ÿ „ Õ")
name = string.gsub(name,"ÿÌ«—Â","— « ÿ Ì Â")
name = string.gsub(name,"—«œ«—","— « — « œ")
name = string.gsub(name,"„‰“·","‰ “ „ ·")
name = string.gsub(name,"„” ‘›Ï","Ï ‘ ” ›   „")
name = string.gsub(name,"ﬂÂ—»«¡","— » ﬂ Â « ¡")
name = string.gsub(name," ›«ÕÂ","Õ Â «   ›")
name = string.gsub(name,"«Œÿ»Êÿ","ÿ » Ê « Œ ÿ")
name = string.gsub(name,"”·„Ê‰","‰ „ Ê · ”")
name = string.gsub(name,"›—‰”«","‰ › — ” «")
name = string.gsub(name,"»— ﬁ«·Â","—   ﬁ » « Â ·")
name = string.gsub(name," ›«Õ","Õ › «  ")
name = string.gsub(name,"„ÿ—ﬁÂ","Â ÿ „ — ﬁ")
name = string.gsub(name,"» Ì Â","»     Ì Â")
name = string.gsub(name,"·Â«‰Â","Â ‰ · Â ·")
name = string.gsub(name,"‘»«ﬂ","» ‘ « ﬂ")
name = string.gsub(name,"»«’","’ « »")
name = string.gsub(name,"”„ﬂÂ","ﬂ ” „ Â")
name = string.gsub(name,"–»«»","» « » –")
name = string.gsub(name," ·›«“","  › · “ «")
name = string.gsub(name,"Õ«”Ê»","” « Õ Ê »")
name = string.gsub(name,"«‰ —‰Ì ","«   ‰ — ‰ Ì  ")
name = string.gsub(name,"”«ÕÂ","Õ « Â ”")
name = string.gsub(name,"Ã”—","— Ã ”")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ì— »Â« ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ «·«”—⁄ ,  — Ì» }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "Õ“Ê—Â" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"«·Ã—”","⁄ﬁ—» «·”«⁄Â","«·”„ﬂ","«·„ÿ—","5","«·ﬂ «»","«·»”„«—","7","«·ﬂ⁄»Â","»Ì  «·‘⁄—","·Â«‰Â","«‰«","«„Ì","«·«»—Â","«·”«⁄Â","22","€·ÿ","ﬂ„ «·”«⁄Â","«·»Ì ‰Ã«‰","«·»Ì÷","«·„—«ÌÂ","«·÷Ê¡","«·ÂÊ«¡","«·÷·","«·⁄„—","«·ﬁ·„","«·„‘ÿ","«·Õ›—Â","«·»Õ—","«·À·Ã","«·«”›‰Ã","«·’Ê ","»·„"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"«·Ã—”","‘Ì∆ «–« ·„” Â ’—Œ „« ÂÊÂ ø")
name = string.gsub(name,"⁄ﬁ—» «·”«⁄Â","«ŒÊ«‰ ·« Ì” ÿÌ⁄«‰  „÷ÌÂ «ﬂÀ— „‰ œﬁÌﬁÂ „⁄« ›„« Â„« ø")
name = string.gsub(name,"«·”„ﬂ","„« ÂÊ «·ÕÌÊ«‰ «·–Ì ·„ Ì’⁄œ «·Ï ”›Ì‰… ‰ÊÕ ⁄·ÌÂ «·”·«„ ø")
name = string.gsub(name,"«·„ÿ—","‘Ì∆ Ì”ﬁÿ ⁄·Ï —√”ﬂ „‰ «·«⁄·Ï Ê·« ÌÃ—Õﬂ ›„« ÂÊ ø")
name = string.gsub(name,"5","„« «·⁄œœ «·–Ì «–« ÷—» Â »‰›”Â Ê«÷›  ⁄·ÌÂ 5 Ì’»Õ À·«ÀÌ‰ ")
name = string.gsub(name,"«·ﬂ «»","„« «·‘Ì∆ «·–Ì ·Â «Ê—«ﬁ Ê·Ì” ·Â Ã–Ê— ø")
name = string.gsub(name,"«·»”„«—","„« ÂÊ «·‘Ì∆ «·–Ì ·« Ì„‘Ì «·« »«·÷—» ø")
name = string.gsub(name,"7","⁄«∆·Â „ƒ·›Â „‰ 6 »‰«  Ê«Œ ·ﬂ· „‰Â‰ .›ﬂ„ ⁄œœ «›—«œ «·⁄«∆·Â ")
name = string.gsub(name,"«·ﬂ⁄»Â","„« ÂÊ «·‘Ì∆ «·„ÊÃÊœ Ê”ÿ „ﬂ… ø")
name = string.gsub(name,"»Ì  «·‘⁄—","„« ÂÊ «·»Ì  «·–Ì ·Ì” ›ÌÂ «»Ê«» Ê·« ‰Ê«›– ø ")
name = string.gsub(name,"·Â«‰Â","ÊÕœÂ Õ·ÊÂ Ê„€—Ê—Â  ·»” „Ì…  ‰Ê—Â .„‰ ÂÌÂ ø ")
name = string.gsub(name,"«‰«","«»‰ «„ﬂ Ê«»‰ «»Ìﬂ Ê·Ì” »«Œ ﬂ Ê·« »«ŒÌﬂ ›„‰ ÌﬂÊ‰ ø")
name = string.gsub(name,"«„Ì","«Œ  Œ«·ﬂ Ê·Ì”  Œ«· ﬂ „‰  ﬂÊ‰ ø ")
name = string.gsub(name,"«·«»—Â","„« ÂÊ «·‘Ì∆ «·–Ì ﬂ·„« Œÿ« ŒÿÊÂ ›ﬁœ ‘Ì∆« „‰ –Ì·Â ø ")
name = string.gsub(name,"«·”«⁄Â","„« ÂÊ «·‘Ì∆ «·–Ì ÌﬁÊ· «·’œﬁ Ê·ﬂ‰Â «–« Ã«⁄ ﬂ–» ø")
name = string.gsub(name,"22","ﬂ„ „—Â Ì‰ÿ»ﬁ ⁄ﬁ—»« «·”«⁄Â ⁄·Ï »⁄÷Â„« ›Ì «·ÌÊ„ «·Ê«Õœ ")
name = string.gsub(name,"€·ÿ","„« ÂÌ «·ﬂ·„Â «·ÊÕÌœÂ «· Ì  ·›÷ €·ÿ œ«∆„« ø ")
name = string.gsub(name,"ﬂ„ «·”«⁄Â","„« ÂÊ «·”ƒ«· «·–Ì  Œ ·› «Ã«» Â œ«∆„« ø")
name = string.gsub(name,"«·»Ì ‰Ã«‰","Ã”„ «”Êœ Êﬁ·» «»Ì÷ Ê—«” «ŒŸ— ›„« ÂÊ ø")
name = string.gsub(name,"«·»Ì÷","„«ÂÊ «·‘Ì∆ «·–Ì «”„Â ⁄·Ï ·Ê‰Â ø")
name = string.gsub(name,"«·„—«ÌÂ","«—Ï ﬂ· ‘Ì∆ „‰ œÊ‰ ⁄ÌÊ‰ „‰ «ﬂÊ‰ ø ")
name = string.gsub(name,"«·÷Ê¡","„« ÂÊ «·‘Ì∆ «·–Ì ÌŒ —ﬁ «·“Ã«Ã Ê·« Ìﬂ”—Â ø")
name = string.gsub(name,"«·ÂÊ«¡","„« ÂÊ «·‘Ì∆ «·–Ì Ì”Ì— «„«„ﬂ Ê·«  —«Â ø")
name = string.gsub(name,"«·÷·","„« ÂÊ «·‘Ì∆ «·–Ì Ì·«Õﬁﬂ «Ì‰„«  –Â» ø ")
name = string.gsub(name,"«·⁄„—","„« ÂÊ «·‘Ì¡ «·–Ì ﬂ·„« ÿ«· ﬁ’— ø ")
name = string.gsub(name,"«·ﬁ·„","„« ÂÊ «·‘Ì∆ «·–Ì Ìﬂ » Ê·« Ìﬁ—√ ø")
name = string.gsub(name,"«·„‘ÿ","·Â √”‰«‰ Ê·« Ì⁄÷ „« ÂÊ ø ")
name = string.gsub(name,"«·Õ›—Â","„« ÂÊ «·‘Ì∆ «–« √Œ–‰« „‰Â «“œ«œ Êﬂ»— ø")
name = string.gsub(name,"«·»Õ—","„« ÂÊ «·‘Ì∆ «·–Ì Ì—›⁄ «Àﬁ«· Ê·« Ìﬁœ— Ì—›⁄ „”„«— ø")
name = string.gsub(name,"«·À·Ã","«‰« «»‰ «·„«¡ ›«‰  —ﬂÊ‰Ì ›Ì «·„«¡ „  ›„‰ «‰« ø")
name = string.gsub(name,"«·«”›‰Ã","ﬂ·Ì ÀﬁÊ» Ê„⁄ –«·ﬂ «Õ›÷ «·„«¡ ›„‰ «ﬂÊ‰ ø")
name = string.gsub(name,"«·’Ê ","«”Ì— »·« —Ã·Ì‰ Ê·« «œŒ· «·« »«·«–‰Ì‰ ›„‰ «‰« ø")
name = string.gsub(name,"»·„","Õ«„· Ê„Õ„Ê· ‰’› ‰«‘› Ê‰’› „»·Ê· ›„‰ «ﬂÊ‰ ø ")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ ÌÕ· «·Õ“Ê—Â ?\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ Õ“Ê—Â }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 

if text == "„⁄«‰Ì" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"ﬁ—œ","œÃ«ÃÂ","»ÿ—Ìﬁ","÷›œ⁄","»Ê„Â","‰Õ·Â","œÌﬂ","Ã„·","»ﬁ—Â","œÊ·›Ì‰"," „”«Õ","ﬁ—‘","‰„—","«Œÿ»Êÿ","”„ﬂÂ","Œ›«‘","«”œ","›√—","–∆»","›—«‘Â","⁄ﬁ—»","“—«›Â","ﬁ‰›–"," ›«ÕÂ","»«–‰Ã«‰"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"ﬁ—œ","??")
name = string.gsub(name,"œÃ«ÃÂ","??")
name = string.gsub(name,"»ÿ—Ìﬁ","??")
name = string.gsub(name,"÷›œ⁄","??")
name = string.gsub(name,"»Ê„Â","??")
name = string.gsub(name,"‰Õ·Â","??")
name = string.gsub(name,"œÌﬂ","??")
name = string.gsub(name,"Ã„·","??")
name = string.gsub(name,"»ﬁ—Â","??")
name = string.gsub(name,"œÊ·›Ì‰","??")
name = string.gsub(name," „”«Õ","??")
name = string.gsub(name,"ﬁ—‘","??")
name = string.gsub(name,"‰„—","??")
name = string.gsub(name,"«Œÿ»Êÿ","??")
name = string.gsub(name,"”„ﬂÂ","??")
name = string.gsub(name,"Œ›«‘","??")
name = string.gsub(name,"«”œ","??")
name = string.gsub(name,"›√—","??")
name = string.gsub(name,"–∆»","??")
name = string.gsub(name,"›—«‘Â","??")
name = string.gsub(name,"⁄ﬁ—»","??")
name = string.gsub(name,"“—«›Â","??")
name = string.gsub(name,"ﬁ‰›–","??")
name = string.gsub(name," ›«ÕÂ","??")
name = string.gsub(name,"»«–‰Ã«‰","??")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ìœ“ „⁄‰Ï «·”„«Ì· ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ „⁄«‰Ì }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "«·⁄ﬂ”" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"»«Ì","›Â„ ","„Ê“Ì‰","«”„⁄ﬂ","«Õ»ﬂ","„ÊÕ·Ê","‰÷Ì›","Õ«—Â","‰«’Ì","ÃÊÂ","”—Ì⁄","Ê‰”Â","ÿÊÌ·","”„Ì‰","÷⁄Ì›","‘—Ì›","‘Ã«⁄","—Õ ","⁄œ·","‰‘Ìÿ","‘»⁄«‰","„Ê⁄ÿ‘«‰","ŒÊ‘ Ê·œ","«‰Ì","Â«œ∆"}
name = katu[math.random(#katu)]
database:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"»«Ì","Â·Ê")
name = string.gsub(name,"›Â„ ","„«›Â„ ")
name = string.gsub(name,"„Ê“Ì‰","“Ì‰")
name = string.gsub(name,"«”„⁄ﬂ","„«”„⁄ﬂ")
name = string.gsub(name,"«Õ»ﬂ","„«Õ»ﬂ")
name = string.gsub(name,"„ÊÕ·Ê","Õ·Ê")
name = string.gsub(name,"‰÷Ì›","Ê’Œ")
name = string.gsub(name,"Õ«—Â","»«—œÂ")
name = string.gsub(name,"‰«’Ì","⁄«·Ì")
name = string.gsub(name,"ÃÊÂ","›Êﬂ")
name = string.gsub(name,"”—Ì⁄","»ÿÌ¡")
name = string.gsub(name,"Ê‰”Â","÷ÊÃÂ")
name = string.gsub(name,"ÿÊÌ·","ﬁ“„")
name = string.gsub(name,"”„Ì‰","÷⁄Ì›")
name = string.gsub(name,"÷⁄Ì›","ﬁÊÌ")
name = string.gsub(name,"‘—Ì›","ﬂÊ«œ")
name = string.gsub(name,"‘Ã«⁄","Ã»«‰")
name = string.gsub(name,"—Õ ","«ÃÌ ")
name = string.gsub(name,"⁄œ·","„Ì ")
name = string.gsub(name,"‰‘Ìÿ","ﬂ”Ê·")
name = string.gsub(name,"‘»⁄«‰","ÃÊ⁄«‰")
name = string.gsub(name,"„Ê⁄ÿ‘«‰","⁄ÿ‘«‰")
name = string.gsub(name,"ŒÊ‘ Ê·œ","„ÊŒÊ‘ Ê·œ")
name = string.gsub(name,"«‰Ì","„ÿÌ")
name = string.gsub(name,"Â«œ∆","⁄’»Ì")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ìœ“ «·⁄ﬂ” ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ «·⁄ﬂ” }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—¬ ·« Ì„ﬂ‰ﬂ  Œ„Ì‰ ⁄œœ «ﬂ»— „‰ «· { 20 } Œ„‰ —ﬁ„ „« »Ì‰ «·{ 1 Ê 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"?? ? „»—Êﬂ ›“  ÊÌ«‰Â ÊŒ„‰  «·—ﬁ„ «·’ÕÌÕ\n?? ?  „ «÷«›… { 5 } „‰ «·‰ﬁ«ÿ \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"?? ? «Ê»” ·ﬁœ Œ”—  ›Ì «··⁄»Â \n?? ? ÕŸ¬ «Ê›— ›Ì «·„—Â «·ﬁ«œ„Â \n?? ? ﬂ«‰ «·—ﬁ„ «·–Ì  „  Œ„Ì‰Â { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"?? ? «Ê»”  Œ„Ì‰ﬂ €·ÿ \n?? ? «—”· —ﬁ„  Œ„‰Â „—Â «Œ—Ï ")
end
end
end
end
if text == "Œ„‰" or text == " Œ„Ì‰" then   
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\n?? ? «Â·« »ﬂ ⁄“Ì“Ì ›Ì ·⁄»… «· Œ„Ì‰ :\n???????????\n".."?? ? „·«ÕŸÂ ·œÌﬂ { 3 } „Õ«Ê·«  ›ﬁÿ ›ﬂ— ﬁ»· «—”«·  Œ„Ì‰ﬂ \n\n".."?? ? ”Ì „  Œ„Ì‰ ⁄œœ „« »Ì‰ «· {1 Ê 20} «–«  ⁄ ﬁœ «‰ﬂ  ” ÿÌ⁄ «·›Ê“ Ã—» Ê«··⁄» «·«‰ ø ")
database:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"?? ? ⁄–—« ·« ÌÊÃœ ”Ê«¡ { 6 } «Œ Ì«—«  ›ﬁÿ «—”· «Œ Ì«—ﬂ „—Â «Œ—Ï\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"?? ? „»—Êﬂ ›“  Êÿ·⁄  «·„ÕÌ»” »· «Ìœ —ﬁ„ { "..NUM.." }\n?? ? ·ﬁœ Õ’·  ⁄·Ï { 3 }„‰ ‰ﬁ«ÿ Ì„ﬂ‰ﬂ «” »œ«·Â‰ »—”«∆· ")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"?? ? ··«”› ·ﬁœ Œ”—  \n?? ? «·„ÕÌ»” »· «Ìœ —ﬁ„ { "..GETNUM.." }\n?? ? Õ«Ê· „—Â «Œ—Ï ··⁄ÀÊ— ⁄·Ï «·„ÕÌ»”")
end
end
end

if text == "„ÕÌ»”" or text == "»« " then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*?       ?     ?      ?      ?     ?
?      ?     ?      ?     ?     ?
?? ãõ ?? ãõ ?? ãõ ?? ãõ ?? ãõ ??
?? ? «Œ — ·√” Œ—«Ã «·„ÕÌ»” «·«Ìœ «· Ì  Õ„· «·„ÕÌ»” 
?? ? «·›«∆“ ÌÕ’· ⁄·Ï { 3 } „‰ «·‰ﬁ«ÿ *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "«·„Œ ·›" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"??","?","??","??","??","??","??","?","?","??","??","??û??","??û??","??û??","??û?","??û?","??û?","??û?","??û?","??","??","??","??","??",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"??","??????????????????????????")
name = string.gsub(name,"?","?????????????????????????")
name = string.gsub(name,"??","??????????????????????")
name = string.gsub(name,"??","????????????????????")
name = string.gsub(name,"??","??????????????????")
name = string.gsub(name,"??","??????????????????")
name = string.gsub(name,"??","????????????????????????")
name = string.gsub(name,"?","???????????????????")
name = string.gsub(name,"?","???????????????????")
name = string.gsub(name,"??","??????????????????????")
name = string.gsub(name,"??","????????????")
name = string.gsub(name,"??û??","??û????û????û????û????û????û????û????û????û????û????û????û??")
name = string.gsub(name,"??û??","??û????û????ûû????ûû????û????û????û????û????û??")
name = string.gsub(name,"??û??","??û????û????û????û????û????û????û????û??")
name = string.gsub(name,"??û??","??û????û????û????û????û????û????û????û????û??")
name = string.gsub(name,"??û?","??û???û???û???û???û???û???û?")
name = string.gsub(name,"??û?","??û???û???û???û???û???û???û???û???û?")
name = string.gsub(name,"??û?","??û???û???û???û???û???û???û???û???û?")
name = string.gsub(name,"??û??","??û????û????û????û????û????û????û????û????û??")
name = string.gsub(name,"??û??","??û????û????û????û????û????û????û????û????û????û??")
name = string.gsub(name,"??","??????????????????")
name = string.gsub(name,"??û??û??","??û??û????û??û????û??û????û??û????û??û????û??û????û??û??")
name = string.gsub(name,"??","????????????????????")
name = string.gsub(name,"??","??????????????????")
name = string.gsub(name,"??","??????????")
name = string.gsub(name,"??","??????????????????")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ìœ“ «·«Œ ·«› ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ «·„Œ ·› }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "«„À·Â" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"ÃÊ“","÷—«ÿÂ","«·Õ»·","«·Õ«›Ì","‘ﬁ—Â","»Ìœﬂ","”·«ÌÂ","«·‰Œ·Â","«·ŒÌ·","Õœ«œ","«·„»··","Ì—ﬂ’","ﬁ—œ","«·⁄‰»","«·⁄„Â","«·Œ»“","»«·Õ’«œ","‘Â—","‘ﬂÂ","ÌﬂÕ·Â",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"ÃÊ“","Ì‰ÿÌ____··„«⁄œÂ ”‰Ê‰")
name = string.gsub(name,"÷—«ÿÂ","«·Ì Ì”Êﬁ «·„ÿÌ Ì Õ„·___")
name = string.gsub(name,"»Ìœﬂ","«ﬂ·___„Õœ Ì›Ìœﬂ")
name = string.gsub(name,"«·Õ«›Ì"," ÃœÌ „‰___‰⁄«·")
name = string.gsub(name,"‘ﬁ—Â","„⁄ «·ŒÌ· Ì«___")
name = string.gsub(name,"«·‰Œ·Â","«·ÿÊ· ÿÊ·___Ê«·⁄ﬁ· ⁄ﬁ· «·’Œ·…")
name = string.gsub(name,"”·«ÌÂ","»«·ÊÃÂ «„—«Ì… Ê»«·ŸÂ—___")
name = string.gsub(name,"«·ŒÌ·","„‰ ﬁ·…___‘œÊ ⁄·Ï «·ç·«» ”—ÊÃ")
name = string.gsub(name,"Õœ«œ","„Êﬂ· „‰ ’Œ„ ÊÃÂÂ ﬂ«· ¬‰Ì___")
name = string.gsub(name,"«·„»··","___„« ÌŒ«› „‰ «·„ÿ—")
name = string.gsub(name,"«·Õ»·","«··Ì  ·œ€… «·ÕÌ… ÌŒ«› „‰ Ã—…___")
name = string.gsub(name,"Ì—ﬂ’","«·„«Ì⁄—›___ÌﬂÊ· «·ﬂ«⁄ ⁄ÊÃÂ")
name = string.gsub(name,"«·⁄‰»","«·„«Ì·ÊÕ___ÌﬂÊ· Õ«„÷")
name = string.gsub(name,"«·⁄„Â","___≈–« Õ»  «·ç‰… «»·Ì” ÌœŒ· «·Ã‰…")
name = string.gsub(name,"«·Œ»“","«‰ÿÌ___··Œ»«“ Õ Ï ·Ê Ì«ﬂ· ‰’Â")
name = string.gsub(name,"»«Õ’«œ","«”„…___Ê„‰Ã·Â „ﬂ”Ê—")
name = string.gsub(name,"‘Â—","«„‘Ì__Ê·«  ⁄»— ‰Â—")
name = string.gsub(name,"‘ﬂÂ","Ì«„‰  ⁄» Ì«„‰__Ì« „‰ ⁄·Ï «·Õ«÷— ·ﬂ…")
name = string.gsub(name,"«·ﬁ—œ","__»⁄Ì‰ «„Â €“«·")
name = string.gsub(name,"ÌﬂÕ·Â","«ÃÂ___⁄„«Â«")
send(msg.chat_id_, msg.id_,"?? ? «”—⁄ Ê«Õœ Ìﬂ„· «·„À· ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"?? ? «·› „»—Êﬂ ·ﬁœ ›“  \n? ? ··⁄» „—Â «Œ—Â «—”· ~{ «„À·Â }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == " ⁄ÿÌ· «·«·⁄«»" and Owner(msg) then   
database:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\n? ?  „  ⁄ÿÌ· «·«·⁄«»") 
end
if text == " ›⁄Ì· «·«·⁄«»" and Owner(msg) then  
database:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\n? ?  „  ›⁄Ì· «·«·⁄«»") 
end
if text == '«·«·⁄«»' then
Teext = [[
*??| «Â·« »ﬂ ›Ì «·«·⁄«»  
? ? ? ? ? ? ? ? ?
??| ﬁ«∆„Â «·«·⁄«» ·œÌﬂ ?
? ? ? ? ? ? ? ? ? 
??|? ? — Ì»? · — Ì» «·ﬂ·„« 
??|? ?«·”„«Ì·« ? ·”„«Ì·«  «·ﬂ·„« 
??û??|? ?«·«”—⁄? ·«”—⁄ «Ã«»Â
??|? ?«·Õ“Ê—Â? · Õ“— «·Ã„·Â
??|? ?«·„⁄«‰Ì? ·„⁄‰« «·”„«Ì·« 
??|? ?«·⁄ﬂ”? ⁄ﬂ” «·ﬂ·«„ 
??|? ?«·»« ? ·⁄»Â «·»«  «Ê „ÕÌ»”
??|? ?«·Œ„‰?  Œ„Ì‰ «·ﬂ·„Â
??|? ?«·«„À·Â? ·⁄»Â «·«„À·Â 
??|? ?«·„Œ ·›? ·⁄»Â «·„Œ ·›« 
? ? ? ? ? ? ? ? ?
?? ? „ÃÊÂ—« Ì ª ·⁄—÷ ⁄œœ «·«—»«Õ
?? ? »Ì⁄ „ÃÊÂ—« Ì + «·⁄œœ ª 
?? ? ·” »œ«· ﬂ· „ÃÊÂ—Â »‹(50) —”«·Â*
? ? ? ? ? ? ? ? ?
?? ? Ch ~? @PIRATE_TE3M ??
]]
send(msg.chat_id_, msg.id_,Teext) 
end
if text == '—”«∆·Ì' then
local nummsg = database:get(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = '?? ? ⁄œœ —”«∆·ﬂ Â‰« *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == '„”Õ —”«∆·Ì' then
database:del(bot_id..'Pir3te:messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '? ?  „ „”Õ Ã„Ì⁄ —”«∆·ﬂ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == '”Õﬂ« Ì' or text == ' ⁄œÌ·« Ì' then
local edit = database:get(bot_id..'Pir3te:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = '? ? ⁄œœ «· ⁄œÌ·«  Â‰« *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == '„”Õ ”Õﬂ« Ì' or text == '„”Õ  ⁄œÌ·« Ì' then
database:del(bot_id..'Pir3te:message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '? ?  „ „”Õ Ã„Ì⁄  ⁄œÌ·« ﬂ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ÃÂ« Ì' then
local addmem = database:get(bot_id.."Pir3te:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = '?? ? ⁄œœ ÃÂ« ﬂ «·„÷«›Â Â‰« *~ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == '„”Õ ÃÂ« Ì' then
database:del(bot_id..'Pir3te:Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '? ?  „ „”Õ Ã„Ì⁄ ÃÂ« ﬂ «·„÷«›Â '
send(msg.chat_id_, msg.id_,Text) 
end

if text == "„ÃÊÂ—« Ì" then 
local Num = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "?? ? ·„  ·⁄» «Ì ·⁄»Â ··Õ’Ê· ⁄·Ï ÃÊ«Â—"
else
Text = "?? ? ⁄œœ ÃÊ«Â— «· Ì —Õ» Â« ÂÌ *~ { "..Num.." } „ÃÊÂ—Â *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^»Ì⁄ „ÃÊÂ—« Ì (%d+)$") then
local NUMPY = text:match("^»Ì⁄ „ÃÊÂ—« Ì (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*?? ? ·« «” ÿÌ⁄ «·»Ì⁄ «ﬁ· „‰ 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"?? ? ·Ì” ·œÌﬂ ÃÊ«Â— „‰ «·«·⁄«» \n?? ? «–« ﬂ‰   —Ìœ —»Õ «·ÃÊ«Â— \n?? ? «—”· «·«·⁄«» Ê«»œ√ «··⁄» ! ") 
else
local NUM_GAMES = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\n?? ? ·Ì” ·œÌﬂ ÃÊ«Â— »Â«–« «·⁄œœ \n?? ? ·“Ì«œ… „ÃÊÂ—« ﬂ ›Ì «··⁄»Â \n?? ? «—”· «·«·⁄«» Ê«»œ√ «··⁄» !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id.."Pir3te:messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"? ?  „ Œ’„ *~ { "..NUMPY.." }* „‰ „ÃÊÂ—« ﬂ \n?? ? Ê „ «÷«›…* ~ { "..(NUMPY * 50).." } —”«·Â «·Ï —”«·ﬂ *")
end 
return false 
end
if text ==("„”Õ") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^«·€«¡$") then 
database:del(bot_id.."Tshak:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "?? ?  „ «·€«¡ «·«„— ") 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:id:user"..msg.chat_id_)  
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."Pir3te:messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"? ?  „ «÷«›… ·Â {"..numadded.."} „‰ «·—”«∆·")  
end
if database:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^«·€«¡$") then 
database:del(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "? ?  „ «·€«¡ «·«„— ") 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"? ?  „ «÷«›… ·Â {"..numadded.."} „‰ «·„ÃÊÂ—« ")  
end
------------------------------------------------------------
if text and text:match("^«÷› —”«∆· (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then    
Mohmad = text:match("^«÷› —”«∆· (%d+)$")
database:set(bot_id.."Tshak:id:user"..msg.chat_id_,Mohmad)  
database:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "? ? «—”· ·Ì ⁄œœ «·—”«∆· «·«‰") 
return false
end
if text and text:match("^«÷› „ÃÊÂ—«  (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
Mohmad = text:match("^«÷› „ÃÊÂ—«  (%d+)$")
database:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,Mohmad)  
database:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "?? ? «—”· ·Ì ⁄œœ «·„ÃÊÂ—«  «·«‰") 
return false
end
if text and text:match("^«÷› „ÃÊÂ—«  (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^«÷› „ÃÊÂ—«  (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"? ?  „ «÷«›… ·Â {"..Num.."} „‰ «·„ÃÊÂ—« ")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^«÷› —”«∆· (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^«÷› —”«∆· (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."Pir3te:messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n? ?  „ «÷«›… ·Â {"..Num.."} „‰ «·—”«∆·")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == " ‰ŸÌ› «·„‘ —ﬂÌ‰" and DevPir3te(msg) then
local pv = database:smembers(bot_id..'Pir3te:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mªª THE USER IS SAVE ME ?\nªª '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mªª THE USER IS BLOCK ME ?\nªª '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Pir3te:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'?? ? ·« ÌÊÃœ „‘ —ﬂÌ‰ ÊÂ„ÌÌ‰')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*?? ? ⁄œœ «·„‘ —ﬂÌ‰ «·«‰ ~ '..#pv..'\n?? ?  „ «·⁄ÀÊ— ⁄·Ï ~ '..sendok..' „‘ —ﬂ ﬁ«„ »ÕŸ— «·»Ê \n? ? «’»Õ ⁄œœ «·„‘ —ﬂÌ‰ «·«‰ ~ '..ok..' „‘ —ﬂ *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == " ‰ŸÌ› «·ﬂ—Ê»« " and DevPir3te(msg) then
local group = database:smembers(bot_id..'Pir3te:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mªª THE BOT IS NOT ADMIN ?\nªª '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mªª THE BOT IS LEFT GROUP ?\nªª '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mªª THE BOT IS KICKED GROUP ?\nªª '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'?? ? ·«  ÊÃœ „Ã„Ê⁄«  ÊÂ„ÌÂ ')   
else
local Mohmad = (w + q)
local sendok = #group - Mohmad
if q == 0 then
Mohmad = ''
else
Mohmad = '\n?? ?   „ «“«·… ~ '..q..' „Ã„Ê⁄«  „‰ «·»Ê '
end
if w == 0 then
storm = ''
else
storm = '\n?? ?   „ «“«·… ~'..w..' „Ã„Ê⁄Â ·«‰ «·»Ê  ⁄÷Ê'
end
send(msg.chat_id_, msg.id_,'*?? ?  ⁄œœ «·„Ã„Ê⁄«  «·«‰ ~ '..#group..' „Ã„Ê⁄Â '..storm..''..Mohmad..'\n?? ? «’»Õ ⁄œœ «·„Ã„Ê⁄«  «·«‰ ~ '..sendok..' „Ã„Ê⁄« *\n')   
end
end
end,nil)
end
return false
end
if text == (" ÕœÌÀ «·”Ê—”") and DevPir3te(msg) then  
send(msg.chat_id_,msg.id_,'? ?  „ «· ÕœÌÀ')
os.execute('rm -rf Pir3te.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/Pir3te/Pir3te/master/Pir3te.lua')
os.execute('wget https://raw.githubusercontent.com/Pir3te/Pir3te/master/start.lua')
dofile('Pir3te.lua')  
return false
end


if text == ' ›⁄Ì· «·»Ê  «·Œœ„Ì' and DevPir3te(msg) then  
database:del(bot_id..'Pir3te:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'? ?  „  ›⁄Ì· «·»Ê  «·Œœ„Ì ') 
end
if text == ' ⁄ÿÌ· «·»Ê  «·Œœ„Ì' and DevPir3te(msg) then  
database:set(bot_id..'Pir3te:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'? ?  „  ⁄ÿÌ· «·»Ê  «·Œœ„Ì') 
end
if text and text:match("^ ⁄Ì‰ ⁄œœ «·«⁄÷«¡ (%d+)$") and DevPir3te(msg) then
local Num = text:match(" ⁄Ì‰ ⁄œœ «·«⁄÷«¡ (%d+)$") 
database:set(bot_id..'Pir3te:Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'?? ?   „ Ê÷⁄ ⁄œœ «·«⁄÷«¡ *~'..Num..'* ⁄÷Ê')
end
if text =='«·«Õ’«∆Ì« ' and DevBot(msg) then
local Groups = database:scard(bot_id..'Pir3te:Chek:Groups')  
local Users = database:scard(bot_id..'Pir3te:UsersBot')  
send(msg.chat_id_, msg.id_,'?? ? «Õ’«∆Ì«  «·»Ê  \n\n?? ? ⁄œœ «·„Ã„Ê⁄«  *~ '..Groups..'\n?? ? ⁄œœ «·„‘ —ﬂÌ‰ ~ '..Users..'*')
end
if text == 'Ã·» ‰”ŒÂ «Õ Ì«ÿÌÂ' and DevPir3te(msg) then
local list = database:smembers(bot_id..'Pir3te:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Pir3te Chat'
ASAS = database:smembers(bot_id.."Pir3te:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Pir3te:Constructor"..v)
MDER = database:smembers(bot_id.."Pir3te:Manager"..v)
MOD = database:smembers(bot_id.."Pir3te:Mod:User"..v)
link = database:get(bot_id.."Pir3te:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Pir3te":"'..NAME..'",'
else
t = t..',"'..v..'":{"Pir3te":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', '?? ?  ⁄œœ „Ã„Ê⁄«  «· Ì ›Ì «·»Ê  { '..#list..'}')
end
if text == '«·„ÿÊ—' or text == '„ÿÊ—' or text == '«·„ÿÊ—Ì‰' then
local Text_Dev = database:get(bot_id..'Pir3te:Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Id_Sudo},function(arg,result) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end,nil)
end
end
if text == '«·„·›« ' and DevPir3te(msg) then
t = '? ? Ã„Ì⁄ «·„·›«  : \n ? ? ? ? ? ? ? ? ? \n'
i = 0
for v in io.popen('ls Pir3te_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "„ Ã— «·„·›« " or text == '«·„ Ã—' then
if DevPir3te(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/Pir3te/FII/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n?? ? «Â·« »ﬂ ›Ì „ Ã— „·›«  ﬁ—’«‰ \n?? ? «·„·›«  «·„ÊÃÊœÂ Õ«·Ì« \n?? ? ? ? ? ? ? ? ??\n\n"
local TextE = "\n?? ? ? ? ? ? ? ? ??\n?? ?  œ· ⁄·«„… (?) «·„·› „›⁄·\n".."?? ?  œ· ⁄·«„… (?) «·„·› „⁄ÿ·\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("Pir3te_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(?)"
else
CeckFile = "(?)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."~?* {`"..name..'`} ª '..CeckFile..'\n[- ??~> LinK About files]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"?? ?  ·« ÌÊÃœ « ’«· „‰ «· api \n") 
end
return false
end
end

if text and text:match("^( ⁄ÿÌ· „·›) (.*)(.lua)$") and DevPir3te(msg) then
local name_t = {string.match(text, "^( ⁄ÿÌ· „·›) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Pir3te_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*?? ?  «·„·› ª {"..file.."}\n?? ?   „  ⁄ÿÌ·Â ÊÕ–›Â »‰Ã«Õ \n?*"
else
t = "*?? ?  »«· «ﬂÌœ  „  ⁄ÿÌ· ÊÕ–› „·› ª {"..file.."} \n?*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/Pir3te/FII/master/Files_Pir3te/"..file)
if res == 200 then
os.execute("rm -fr Pir3te_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('Pir3te.lua')  
else
send(msg.chat_id_, msg.id_,"*?? ?  ⁄–—« ·« ÌÊÃœ Â«ﬂ–« „·› ›Ì «·„ Ã— *\n") 
end
return false
end
if text and text:match("^( ›⁄Ì· „·›) (.*)(.lua)$") and DevPir3te(msg) then
local name_t = {string.match(text, "^( ›⁄Ì· „·›) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Pir3te_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*?? ?  »«· «ﬂÌœ  „  ‰“Ì· Ê ›⁄Ì· „·› ª {"..file.."} \n?*"
else
t = "*?? ?  «·„·› ª {"..file.."}\n?? ?   „  ‰“Ì·Â Ê ›⁄Ì·Â »‰Ã«Õ \n??*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/Pir3te/FII/master/Files_Pir3te/"..file)
if res == 200 then
local chek = io.open("Pir3te_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('Pir3te.lua')  
else
send(msg.chat_id_, msg.id_,"*?? ?  ⁄–—« ·« ÌÊÃœ Â«ﬂ–« „·› ›Ì «·„ Ã— *\n") 
end
return false
end
if text == "„”Õ Ã„Ì⁄ «·„·›« " and DevPir3te(msg) then
os.execute("rm -fr Pir3te_Files/*")
send(msg.chat_id_,msg.id_,"? ?  „ Õ–› Ã„Ì⁄ «·„·›« ")
return false
end
if text == '‰ﬁ· «·«Õ’«∆Ì« ' and DevPir3te(msg) then
local Users = database:smembers('Pir3te:'..bot_id.."userss")
local Groups = database:smembers('Pir3te:'..bot_id..'groups') 
for i = 1, #Groups do
database:sadd(bot_id..'Pir3te:Chek:Groups',Groups[i])  
local list1 = database:smembers('Pir3te:'..bot_id..'creatorbasic:'..Groups[i])
for k,v in pairs(list1) do
database:sadd(bot_id.."Pir3te:Basic:Constructor"..Groups[i], v)
end
local list2 = database:smembers('Pir3te:'..bot_id..'creator:'..Groups[i])
for k,v in pairs(list2) do
database:sadd(bot_id.."Pir3te:Constructor"..Groups[i], v)
end
local list3 = database:smembers('Pir3te:'..bot_id..'owners:'..Groups[i])
for k,v in pairs(list3) do
database:sadd(bot_id.."Pir3te:Manager"..Groups[i], v)
end
local list4 = database:smembers('Pir3te:'..bot_id..'mods:'..Groups[i])
for k,v in pairs(list4) do
database:sadd(bot_id.."Pir3te:Mod:User"..Groups[i], v)
end
database:set(bot_id.."Pir3te:Lock:tagservrbot"..Groups[i],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Pir3te:'..lock..Groups[i],"del")    
end
end
for i = 1, #Users do
database:sadd(bot_id..'Pir3te:UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'?? ?  „ ‰ﬁ· : '..#Groups..' ﬂ—Ê»\n?? ?  „ ‰ﬁ· : '..#Users..' „‘ —ﬂ \n?? ? „‰ «· ÕœÌÀ «·ﬁœÌ„ «·Ï «· ÕœÌÀ «·ÃœÌœ')
end
if text == 'Õ–› ﬂ·Ì‘Â «·„ÿÊ—' and DevPir3te(msg) then
database:del(bot_id..'Pir3te:Text_Dev')
send(msg.chat_id_, msg.id_,'? ?   „ Õ–› ﬂ·Ì‘Â «·„ÿÊ—')
end
if text == 'Ê÷⁄ ﬂ·Ì‘Â «·„ÿÊ—' and DevPir3te(msg) then
database:set(bot_id..'Pir3te:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,'?? ?  «—”· «·ﬂ·Ì‘Â «·«‰')
return false
end
if text and database:get(bot_id..'Pir3te:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == '«·€«¡' then 
database:del(bot_id..'Pir3te:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'?? ?  „ «·€«¡ Õ›Ÿ ﬂ·Ì‘… «·„ÿÊ—')
return false
end
database:set(bot_id..'Pir3te:Text_Dev',text)
database:del(bot_id..'Pir3te:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'?? ?  „ Õ›Ÿ ﬂ·Ì‘… «·„ÿÊ—')
return false
end
if text == '—›⁄ «·‰”ŒÂ «·«Õ Ì«ÿÌÂ' and DevPir3te(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == " ÕœÌÀ" and DevPir3te(msg) then
dofile("Pir3te.lua")  
send(msg.chat_id_, msg.id_, "? ?  „ «· ÕœÌÀ")
end
if text == '«·”Ê—”' or text == '”Ê—”' or text == 'Ì«”Ê—”' or text == 'Ì« ”Ê—”' then
Text = [[
?? «Â·« »ﬂ ›Ì ”Ê—” «·ﬁ—’«‰   ??
???Pirate TEAM 
? ? ? ? ? ? ? ? ?
??? [Source Channel](https://t.me/pirate_te3m)
??? [Source  Files](https://t.me/pirate_te3m)
??? [DEV Pirate](https://t.me/Alhassan_Talib)
 
 ? ? ? ? ? ? ? ? 
??? [TWS Pirate](https://t.me/PirateTe3mBot)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '«·«Ê«„—' or text == 'ÊÌ‰ «·«Ê«„—' or text == '„Ì‘ €·‰ «·«Ê«„—ÿ' then
Text = [[
ï Â‰«ﬂ  5 «Ê«„— ·⁄—÷Â« ?
???????????????
- „1 ~ ·⁄—÷ «Ê«„— «·Õ„«ÌÂ ??
- „2 ~ ·⁄—÷ «Ê«„— «·«œ„‰ÌÂ ????û??
- „3 ~ ·⁄—÷ «Ê«„— «·„œ—«¡ ????û??
- „4 ~ ·⁄—÷ «Ê«„— «·„‰‘∆Ì‰ ????û??
- „5 ~ ·⁄—÷ «Ê«„— «·„ÿÊ—Ì‰ ????û??
???????????????
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '„1' or text == '„1' or text == '«Ê«„— «·Õ„«ÌÂ' then
Text = [[
??| «Â·« »ﬂ ›Ì «Ê«„— «·Õ„«ÌÂ  
? ? ? ? ? ? ? ? ?
??| Ì„ﬂ‰ﬂ „‰ Œ·«· «·«„—  › Õ/ﬁ›· „«Ì·Ì  ? 
? ? ? ? ? ? ? ? ? 
??|? «· «ﬂ
??|? «·’Ê—
??|? «·„⁄—›
??|? «·„·›« 
??|? «·—Ê«»ÿ
??|? «· ⁄œÌ·
??|? «· À»Ì 
??|? «·›ÌœÌÊ
??|? «·«‰·«Ì‰
??|? «·œ—œ‘Â
??|? «· ÊÃÌÂ
??|? «·«€«‰Ì
??|? «·’Ê 
??|? «·ÃÂ« 
??|? «· ﬂ—«—
??|? «·»Ê « 
??|? «·”Ì·›Ì
??|? «·ﬂ·«Ì‘
??|? «·„ Õ—ﬂÂ
??|? «·‘Ê«—ÕÂ
??|? «·„·’ﬁ« 
??|? «·„«—ﬂœ«Ê‰
??|? «·«‘⁄«—« 
? ? ? ? ? ? ? ? ?
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '„2' or text == '„2' or text == '«Ê«„— «·«œ„‰' then
Text = [[
??| «Â·« »ﬂ ›Ì «Ê«„— «·«œ„‰   
? ? ? ? ? ? ? ? ?
??| Ì„ﬂ‰ ··«œ„‰ «·ﬁÌ«„ »„«Ì·Ì  ? 
? ? ? ? ? ? ? ? ? 
??|? «· «ﬂ ··ﬂ·
??|? „”Õ «·’·«ÕÌ« 
??|? ⁄œœ «·ﬂ—Ê»
??|? —›⁄ „„Ì“
??|? «·„„Ì“Ì‰
??|? „”Õ «·„„Ì“Ì‰
??|? «·’·«ÕÌ« 
??|?  À»Ì 
??|? «·€«¡  À»Ì 
??|? «·«⁄œ«œ« 
??|? ﬂ‘› «·»Ê 
??|? ﬂ „
??|? „”Õ «·„ﬂ Ê„Ì‰
??|? «·€«¡ ﬂ „
??|? ÕŸ—
??|? „”Õ «·„ÿ—ÊœÌ‰
??|? «·€«¡ ÕŸ—
??|? ÿ—œ
??|? „”Õ «·„ÿ—ÊœÌ‰
??|? „‰⁄
??|? «·€«¡ „‰⁄
??|? ﬁ«∆„Â «·„‰⁄
??|?  „”Õ ﬁ«∆„Â «·„‰⁄
??|? «·«⁄œ«œ« 
??|? „”Õ «·’Ê—Â
??|?  ›⁄Ì· «· —ÕÌ»
??|? „”Õ «·—«»ÿ
??|?  ⁄ÿÌ· «· —ÕÌ»
??|? „”Õ «·»Ê « 
??|? «÷› ’·«ÕÌÂ
??|? „”Õ «·ﬁÊ«‰Ì‰
??|? „”Õ ’·«ÕÌÂ
? ? ? ? ? ? ? ? ?
??| ÊÌ„ﬂ‰ ··«œ„‰ Ê÷⁄ «·«Ê«„— «·« ÌÂ
? ? ? ? ? ? ? ? ?
??|? Ê÷⁄ «”„
??|? Ê÷⁄ —«»ÿ
??|? Ê÷⁄ Ê’›
??|? Ê÷⁄ ﬁÊ«‰Ì‰
??|? Ê÷⁄  —ÕÌ»
? ? ? ? ? ? ? ? ?
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '„3' or text == '„3' or text == '«Ê«„— «·œÌ—' then
Text = [[
??| «Â·« »ﬂ ›Ì «Ê«„— «·„œÌ—   
? ? ? ? ? ? ? ? ?
??| Ì„ﬂ‰ ··„œÌ— «·ﬁÌ«„ »„«Ì·Ì  ? 
? ? ? ? ? ? ? ? ? 
??|?  ›⁄Ì· «·«ÌœÌ »«·’Ê—Â
??|?  ⁄ÿÌ· «·«ÌœÌ »«·’Ê—Â
??|?  ›⁄Ì· «·«ÌœÌ
??|?  ⁄ÿÌ· «·«ÌœÌ
??|?  ›⁄Ì· —œÊœ «·„ÿÊ—
??|?  ⁄ÿÌ· —œÊœ «·„ÿÊ—
??|?  ›⁄Ì· «·«·⁄«»
??|?  ⁄ÿÌ· «·«·⁄«»
??|?  ›⁄Ì· «ÿ—œ‰Ì
??|?  ⁄ÿÌ· «ÿ—œ‰Ì
??|?  ›⁄Ì· «·—›⁄
??|?  ⁄ÿÌ· «·—›⁄
??|?  ›⁄Ì· «·ÿ—œ 
??|?  ›⁄Ì· «·ÕŸ—
??|?  ⁄ÿÌ· «·ÿ—œ 
??|?  ⁄ÿÌ· «·ÕŸ—
??|?  ›⁄Ì· Ã·» «·—«»ÿ
??|?  ⁄ÿÌ· «·—«»ÿ
??|?  ›⁄Ì· «Ê«„— «· Õ‘Ì‘
??|?  ⁄ÿÌ· «Ê«„— «· Õ‘Ì‘
??|? —›⁄ «œ„‰ 
??|?  ‰“Ì· «œ„‰
??|? «÷› —œ 
??|? Õ–› —œ
??|? «·«œ„‰ÌÂ
??|? —›⁄ «·«œ„‰ÌÂ
??|? —œÊœ «·„œÌ—
??|?  ⁄Ì‰ «·«ÌœÌ
??|? „”Õ «·«ÌœÌ
??|? „”Õ «·«œ„‰ÌÂ
??|? „”Õ —œÊœ «·„œÌ—
??|?  ‰ŸÌ› +⁄œœ ·« Ì Ã«Ê“ 1000 
 ? ? ? ? ? ? ? ? ?
?? Ì„ﬂ‰ ··„œÌ—  €ÌÌ—  — » «·«⁄÷«¡ «·Ÿ«Â—Â »«·«ÌœÌ
? ? ? ? ? ? ? ? ?
??|?  €Ì— —œ «·„ÿÊ— + «·‰’
??|? €Ì— —œ «·⁄÷Ê   + «·‰’
??|?  €Ì— —œ «·„‰‘∆ + «·‰’
??|?  €Ì— —œ «·„œÌ—   + «·‰’
??|?  €Ì— —œ «·«œ„‰   + «·‰’
??|?  €Ì— —œ «·„„Ì“   + «·‰’
??|?  €Ì— —œ «·„‰‘∆ «·«”«”Ì + «·‰’
? ? ? ? ? ? ? ? ?
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '„5' or text == '„5' or text == '«Ê„— «·„‰‘∆' then
Text = [[
??| «Â·« »ﬂ ›Ì «Ê«„— «·„‰‘∆ «·«”«”Ì   
? ? ? ? ? ? ? ? ?
1? - Ì„ﬂ‰ ··„‰‘∆ «·ﬁÌ«„ »ﬂ· „«ÌﬁÌ„ »Â «·«œ‰Ï — »Â „‰Â. 
? ? ? ? ? ? ? ? ? 
??| ÊÌ„ﬂ‰ ··„‰‘∆ «·«”«”Ì «·ﬁÌ«„ »„Ì·Ì? 
? ? ? ? ? ? ? ? ?
??|?—›⁄ „‰‘∆
??|? ‰“Ì· „‰‘∆
??|?„”Õ «·„‰‘∆Ì‰
? ? ? ? ? ? ? ? ?
Ì„ﬂ‰ ··„‰‘Ï «·ﬁÌ«„ »„«Ì·Ì ?
? ? ? ? ? ? ? ? ?
??|?—›⁄ „œÌ—
??|? ‰“Ì· „œÌ—
??|? «·„œ—«¡
??|?„”Õ «·„œ—«¡
??|?«÷› «„—
??|?«·«Ê«„— «·„÷«›Â
??|?„”Õ «·«Ê«„— «·„÷«›Â
??|?Õ–› «·«Ê«„— «·„÷«›Â
??|?«÷› —”«∆· + ⁄œœ »«·—œ
??|?«÷› „ÃÊÂ—«  + ⁄œœ »«·—œ
? ? ? ? ? ? ? ? ?
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == '„5' or text == '„5' or text == '«Ê«„— «·„ÿÊ—' then
Text = [[
??| «Â·« »ﬂ ›Ì «Ê«„— «·„ÿÊ— «·«”«”Ì   
? ? ? ? ? ? ? ? ?
??| Ì„ﬂ‰ ··„ÿÊ— «·ﬁÌ«„ »„«Ì·Ì  ? 
? ? ? ? ? ? ? ? ? 
??|?  ›⁄Ì· 
?|?  ⁄ÿÌ·
??|? ÕŸ— ⁄«„
?|? «·€«¡ ⁄«„
??|? «÷› „ÿÊ—
?|? Õ–› „ÿÊ—
??|? „”Õ «·„ÿÊ—Ì‰
?|? „”Õ ﬁ«∆„Â «·⁄«„
??|? —œÊœ «·„ÿÊ—
?|? „”Õ —œÊœ «·„ÿÊ—
??|? «÷› —œ ··ﬂ·
?|? Õ–› —œ ··ﬂ·
??|? Ê÷⁄ ﬂ·Ì‘Â «·„ÿÊ—
?|? Õ–› ﬂ·Ì‘Â «·„ÿÊ—
??|?  ÕœÌÀ
?|?  ÕœÌÀ «·”Ê—”
??|?  ›⁄Ì· «·«–«⁄Â
?|?  ⁄ÿÌ· «·«–«⁄Â
??|?  ›⁄Ì· «·„€«œ—…
?|?  ⁄ÿÌ· «·„€«œ—…
??|?  ⁄Ì‰ ⁄œœ «·«⁄÷«¡ + ⁄œœ
?|?  ›⁄Ì· «·»Ê  «·Œœ„Ì
??|?  ⁄ÿÌ· «·»Ê  «·Œœ„Ì
?|?  ›⁄Ì· + «”„ «·„·›
??|?  ⁄ÿÌ· + «”‰ «·„·›
?|? «·„ Ã—
??|? «·„·›« 
?|? «Ê«„— «·„ÿÊ—
??|? „”Õ Ã„Ì⁄ «·„·›« 
?|? €«œ—
??|? «–«⁄Â
?|? «–«⁄Â Œ«’
??|? «·«Õ’«∆Ì«  
?|? €«œ— + «ÌœÌ «·„Ã„Ê⁄Â
??|? «–«⁄Â »«· À»Ì  
??|? «–«⁄Â »«· ÊÃÌÂ 
?|? «·„‰‘∆Ì‰ «·«”«”Ì‰
??|?„”Õ «·„‰‘∆Ì‰ «·«”«”Ì‰ 
?|? —›⁄ „‰‘∆ «”«”Ì
??|?  ›⁄Ì·  ‰“Ì· „‰‘∆ «”«”Ì 
 ? ? ? ? ? ? ? ? ?
?? ~ ÊÌ„ﬂ‰ ··„ÿÊ— «” Œœ«„ ﬂ· «Ê«„— «·»Ê  «Ì÷«
? ? ? ? ? ? ? ? ?
?? CH: [@PIRATE_TE3M](https://t.me/PIRATE_TE3M)
]]
send(msg.chat_id_, msg.id_,Text)
end

end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 

if text == ' ›⁄Ì·' and DevBot(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Pir3te:Num:Add:Bot') or 0) and not DevPir3te(msg) then
send(msg.chat_id_, msg.id_,'?? ? ⁄œœ «⁄÷«¡ «·„Ã„Ê⁄Â «ﬁ· „‰ *~ {'..(database:get(bot_id..'Pir3te:Num:Add:Bot') or 0)..'* ⁄÷Ê')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Pir3te:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'?? ? «·„Ã„Ê⁄Â „›⁄·Â ”«»ﬁ« ')
else
Reply_Status(msg,result.id_,'reply_Add','? ?  „  ›⁄Ì· «·„Ã„Ê⁄Â ~ '..chat.title_..'')
database:sadd(bot_id..'Pir3te:Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = '·« ÌÊÃœ'
end
Text = '?? ?  „  ›⁄Ì· „Ã„Ê⁄Â ÃœÌœÂ\n'..
'\n?? ? »Ê«”ÿ… ~ '..Name..''..
'\n?? ? «ÌœÌ «·„Ã„Ê⁄Â ~ `'..IdChat..'`'..
'\n?? ? ⁄œœ «⁄÷«¡ «·„Ã„Ê⁄Â *~ '..NumMember..'*'..
'\n?? ? «”„ «·„Ã„Ê⁄Â ~ ['..NameChat..']'..
'\n?? ? «·—«»ÿ ~ ['..LinkGp..']'
if not DevPir3te(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == ' ⁄ÿÌ·' and DevBot(msg) then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Pir3te:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'?? ? «·„Ã„Ê⁄Â „⁄ÿ·Â ”«»ﬁ« ')
else
Reply_Status(msg,result.id_,'reply_Add','? ?  „  ⁄ÿÌ· «·„Ã„Ê⁄Â ~ '..chat.title_..'')
database:srem(bot_id..'Pir3te:Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = '·« ÌÊÃœ'
end
Text = '?? ?  „  ⁄ÿÌ· „Ã„Ê⁄Â ÃœÌœÂ\n'..
'\n?? ? »Ê«”ÿ… ~ '..Name..''..
'\n?? ? «ÌœÌ «·„Ã„Ê⁄Â ~ `'..IdChat..'`'..
'\n?? ? «”„ «·„Ã„Ê⁄Â ~ ['..NameChat..']'..
'\n?? ? «·—«»ÿ ~ ['..LinkGp..']'
if not DevPir3te(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == ' ›⁄Ì·' and not DevBot(msg) and not database:get(bot_id..'Pir3te:Free:Add:Bots') then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'?? ? «·»Ê  ·Ì” «œ„‰ Ì—ÃÏ  —ﬁÌ Ì !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = '«·„‰‘∆'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = '«·«œ„‰'
else 
var= '⁄÷Ê'
end
if database:sismember(bot_id..'Pir3te:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'?? ? «·„Ã„Ê⁄Â „›⁄·Â ”«»ﬁ« ')
else
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Pir3te:Num:Add:Bot') or 0) and not DevPir3te(msg) then
send(msg.chat_id_, msg.id_,'?? ? ⁄œœ «⁄÷«¡ «·„Ã„Ê⁄Â «ﬁ· „‰ *~ {'..(database:get(bot_id..'Pir3te:Num:Add:Bot') or 0)..'* ⁄÷Ê')
return false
end
Reply_Status(msg,result.id_,'reply_Add','? ?  „  ›⁄Ì· «·„Ã„Ê⁄Â ~ '..chat.title_..'')
database:sadd(bot_id..'Pir3te:Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Pir3te:Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = '·« ÌÊÃœ'
end
Text = '?? ?  „  ›⁄Ì· „Ã„Ê⁄Â ÃœÌœÂ\n'..
'\n?? ? »Ê«”ÿ… ~ '..Name..''..
'\n?? ? „Êﬁ⁄Â ›Ì «·„Ã„Ê⁄Â ~ '..AddPy..'' ..
'\n?? ? «ÌœÌ «·„Ã„Ê⁄Â ~ `'..IdChat..'`'..
'\n?? ? ⁄œœ «⁄÷«¡ «·„Ã„Ê⁄Â *~ '..NumMember..'*'..
'\n?? ? «”„ «·„Ã„Ê⁄Â ~ ['..NameChat..']'..
'\n?? ? «·—«»ÿ ~ ['..LinkGp..']'
if not DevPir3te(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end

if Chat_Type == 'UserBot' then
if text == '/start' then  
if DevPir3te(msg) then
local Text = '*?? ? „—Õ»« ⁄“Ì“Ì ¬·„‹ÿ‹Ê— ï ????û??\n?? ?  ”‹ ÿ‹Ì⁄ù˛ ¬· Õê„ »ê· ¬·¬Ê¬„‹— ï ??\n?? ? ¬·„‹„‹ÊÃÊœÂ »¬·êÌ»Ê—œ ›Ì ¬·«”›‹·\n?? ? ›ﬁÿ ¬÷‹€ÿ ⁄ ¬·¬„‹— ¬·–Ì  —Ìœ  ‰›Ì–Â¿ù\n¡?? ? ? ? ? ? ? ? ??\n?? ? „⁄—›  «·„ÿÊ—~?  ['..UserName..']*'
local keyboard = {
{' ›⁄Ì· «·»Ê  Œœ„Ì ??',' ⁄ÿÌ· «·»Ê  Œœ„Ì ??'},
{' ›⁄Ì· «· Ê«’· ??',' ⁄ÿÌ· «· Ê«’· ??'},
{' ‰ŸÌ› «·ﬂ—Ê»«  ??',' ‰ŸÌ› «·„‘ —ﬂÌ‰ ??'},
{'«·«Õ’«∆Ì«  ??'},
{' ›⁄Ì· «·«–«⁄Â ??',' ⁄ÿÌ· «·«–«⁄Â ??'},
{'«–«⁄Â »«· ÊÃÌÂ??','«–«⁄Â »«· ÊÃÌÂ Œ«’ ??'},
{'«–«⁄Â Œ«’ ???','«–«⁄Â ??'},
{'«·„ÿÊ—Ì‰ ??','„”Õ «·„ÿÊ—Ì‰ ??'},
{'„”Õ ﬁ«∆„Â «·⁄«„ ??','ﬁ«∆„Â «·⁄«„ ??'},
{'Õ–› ﬂ·Ì‘Â ” «—  ??','÷⁄ ﬂ·Ì‘Â ” «—  ??'},
{' ÕœÌÀ ?',' ÕœÌÀ «·”Ê—” ??'},
{'Ã·» ‰”ŒÂ «Õ Ì«ÿÌÂ ??'},
{'«·€«¡ ?'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not database:get(bot_id..'Pir3te:Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Test = '*?? ?  „—Õ»« ⁄“Ì“Ì\n?? ?  ¬‰« »Ê  Õ„«Ì… ¬·„Ã„Ê⁄« \n?? ?  «÷›‰Ì ¬·Ï „Ã„Ê⁄ ﬂ\n?? ? ﬁ„ »—›⁄Ì ¬œ„‰ Ê¬—”· ª {  ›⁄Ì· }\n?? ? ”∆ﬁÊ„ »—›⁄ ¬·„‰‘∆ Ê¬ «·«œ„‰ÌÂ  ·ﬁ«∆Ì\n?? ? ? ? ? ? ? ? ??\n? ? „⁄—› «·„ÿÊ— ['..UserName..']*'
end 
send(msg.chat_id_, msg.id_, Test) 
end
end
database:setex(bot_id..'Pir3te:Start:Time'..msg.sender_user_id_,60,true)
return false
end
if not DevPir3te(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'?? ?  „  «—”«· —”«· ﬂ «·Ï ~ ['..UserName..']')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'?? ?  „ «—”«· «·„·’ﬁ „‰ ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevPir3te(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'ÕŸ—' then
sendText(Id_Sudo,'?? ?  ·‘Œ’ ª ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n?? ?   „ ÕŸ—Â „‰ «· Ê«’· ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='«·€«¡ «·ÕŸ—' then
sendText(Id_Sudo,'?? ? «·‘Œ’ ª ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n?? ?   „ «·€«¡ ÕŸ—Â „‰ «· Ê«’· ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\n?? ?  ›‘· «—”«· —”«· ﬂ ·«‰ «·⁄÷Ê ﬁ«„ »ÕŸ— «·»Ê ') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = '?? ?  „  «—”«· «·—”«·Â «·ÌÂ .. '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = '?? ?  „  «—”«· «·„·’ﬁ «·ÌÂ .. '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '?? ?  „  «—”«· «·’Ê—Â «·ÌÂ .. '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = '?? ?  „  «—”«· «·„ Õ—ﬂÂ «·ÌÂ .. '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = '?? ?  „  «—”«· «·»’„Â «·ÌÂ .. '
end     
sendText(Id_Sudo,Text..'\n'..'?? ?  ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevPir3te(msg) then
if text == ' ›⁄Ì· «· Ê«’· ??' then  
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'?? ?   „  ›⁄Ì· «· Ê«’· ') 
end
if text == ' ⁄ÿÌ· «· Ê«’· ??' then  
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'?? ?   „  ⁄ÿÌ· «· Ê«’· ') 
end
if text =='«·«Õ’«∆Ì«  ??' then
local Groups = database:scard(bot_id..'Pir3te:Chek:Groups')  
local Users = database:scard(bot_id..'Pir3te:UsersBot')  
send(msg.chat_id_, msg.id_,'?? ? «Õ’«∆Ì«  «·»Ê  \n\n?? ? ⁄œœ «·„Ã„Ê⁄«  *~ '..Groups..'\n?? ? ⁄œœ «·„‘ —ﬂÌ‰ ~ '..Users..'*')
end
if text == " ‰ŸÌ› «·„‘ —ﬂÌ‰ ??" then
local pv = database:smembers(bot_id..'Pir3te:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mªª THE USER IS SAVE ME ?\nªª '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mªª THE USER IS BLOCK ME ?\nªª '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Pir3te:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'?? ? ·« ÌÊÃœ „‘ —ﬂÌ‰ ÊÂ„ÌÌ‰')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*?? ? ⁄œœ «·„‘ —ﬂÌ‰ «·«‰ ~ '..#pv..'\n?? ?  „ «·⁄ÀÊ— ⁄·Ï ~ '..sendok..' „‘ —ﬂ ﬁ«„ »ÕŸ— «·»Ê \n? ? «’»Õ ⁄œœ «·„‘ —ﬂÌ‰ «·«‰ ~ '..ok..' „‘ —ﬂ *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == " ‰ŸÌ› «·ﬂ—Ê»«  ??" then
local group = database:smembers(bot_id..'Pir3te:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mªª THE BOT IS NOT ADMIN ?\nªª '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mªª THE BOT IS LEFT GROUP ?\nªª '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mªª THE BOT IS KICKED GROUP ?\nªª '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Pir3te:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'?? ? ·«  ÊÃœ „Ã„Ê⁄«  ÊÂ„ÌÂ ')   
else
local Mohmad = (w + q)
local sendok = #group - Mohmad
if q == 0 then
Mohmad = ''
else
Mohmad = '\n?? ?   „ «“«·… ~ '..q..' „Ã„Ê⁄«  „‰ «·»Ê '
end
if w == 0 then
storm = ''
else
storm = '\n?? ?   „ «“«·… ~'..w..' „Ã„Ê⁄Â ·«‰ «·»Ê  ⁄÷Ê'
end
send(msg.chat_id_, msg.id_,'*?? ?  ⁄œœ «·„Ã„Ê⁄«  «·«‰ ~ '..#group..' „Ã„Ê⁄Â '..storm..''..Mohmad..'\n?? ? «’»Õ ⁄œœ «·„Ã„Ê⁄«  «·«‰ ~ '..sendok..' „Ã„Ê⁄« *\n')   
end
end
end,nil)
end
return false
end
if text == ' ›⁄Ì· «·»Ê  Œœ„Ì ??' then
database:del(bot_id..'Pir3te:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\n?? ?  „  ›⁄Ì· «·»Ê  «·Œœ„Ì ') 
end
if text == ' ⁄ÿÌ· «·»Ê  Œœ„Ì ??' then
database:set(bot_id..'Pir3te:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\n?? ?  „  ⁄ÿÌ· «·»Ê  «·Œœ„Ì') 
end
if text=="«–«⁄Â Œ«’ ???" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì ”Ê«¡ ~ { „·’ﬁ, „ Õ—ﬂÂ, ’Ê—Â, —”«·Â }\n?? ? ··Œ—ÊÃ «—”· «·€«¡ ") 
return false
end 
if text=="«–«⁄Â ??" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì ”Ê«¡ ~ { „·’ﬁ, „ Õ—ﬂÂ, ’Ê—Â, —”«·Â }\n?? ? ··Œ—ÊÃ «—”· «·€«¡ ") 
return false
end  
if text=="«–«⁄Â »«· ÊÃÌÂ??" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì «· ÊÃÌÂ «·«‰") 
return false
end 
if text=="«–«⁄Â »«· ÊÃÌÂ Œ«’ ??" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Pir3te:Status:Bc") and not DevPir3te(msg) then 
send(msg.chat_id_, msg.id_,"?? ? «·«–«⁄Â „⁄ÿ·Â „‰ ﬁ»· «·„ÿÊ— «·«”«”Ì")
return false
end
database:setex(bot_id.."Pir3te:Pir3te:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"?? ? «—”· ·Ì «· ÊÃÌÂ «·«‰") 
return false
end 
if text == " ›⁄Ì· «·«–«⁄Â ??" then
database:del(bot_id.."Pir3te:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n?? ?  „  ›⁄Ì· «·«–«⁄Â " ) 
return false
end 
if text == " ⁄ÿÌ· «·«–«⁄Â ??" then
database:set(bot_id.."Pir3te:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n?? ?  „  ⁄ÿÌ· «·«–«⁄Â") 
return false
end 
if text == " ›⁄Ì· «·„€«œ—Â ??" then
database:del(bot_id.."Pir3te:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"?? ?  „  ›⁄Ì· „€«œ—… «·»Ê ") 
return false 
end
if text == " ⁄ÿÌ· «·„€«œ—Â ??" then
database:set(bot_id.."Pir3te:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "?? ?  „  ⁄ÿÌ· „€«œ—… «·»Ê ") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == '«·€«¡ ?' then   
send(msg.chat_id_, msg.id_,"?? ?  „ «·€«¡ Õ›Ÿ ﬂ·Ì‘Â ” «— ") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'?? ?  „ Õ›Ÿ ﬂ·Ì‘Â ” «— ') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == '÷⁄ ﬂ·Ì‘Â ” «—  ??' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'?? ? «—”· ·Ì «·ﬂ·Ì‘Â «·«‰') 
return false
end
if text == 'Õ–› ﬂ·Ì‘Â ” «—  ??' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'?? ?  „ Õ–› ﬂ·Ì‘Â ” «— ') 
end
if text == ("„”Õ ﬁ«∆„Â «·⁄«„ ??") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:GBan:User")
send(msg.chat_id_, msg.id_, "\n?? ?  „ „”Õ ﬁ«∆„Â «·⁄«„")
return false
end
if text == ("„”Õ «·„ÿÊ—Ì‰ ??") and DevPir3te(msg) then
database:del(bot_id.."Pir3te:Sudo:User")
send(msg.chat_id_, msg.id_, "\n?? ?   „ „”Õ ﬁ«∆„… «·„ÿÊ—Ì‰  ")
end
if text == ("ﬁ«∆„Â «·⁄«„ ??") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:GBan:User")
t = "\n? ? ﬁ«∆„… «·„ÕŸÊ—Ì‰ ⁄«„ \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÕŸÊ—Ì‰ ⁄«„"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("«·„ÿÊ—Ì‰ ??") and DevPir3te(msg) then
local list = database:smembers(bot_id.."Pir3te:Sudo:User")
t = "\n? ? ﬁ«∆„… „ÿÊ—Ì‰ «·»Ê  \n? ? ? ? ? ? ? ? ? \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Pir3te:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "? ? ·« ÌÊÃœ „ÿÊ—Ì‰"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'Ã·» ‰”ŒÂ «Õ Ì«ÿÌÂ ??' then
local list = database:smembers(bot_id..'Pir3te:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Pir3te Chat'
ASAS = database:smembers(bot_id.."Pir3te:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Pir3te:Constructor"..v)
MDER = database:smembers(bot_id.."Pir3te:Manager"..v)
MOD = database:smembers(bot_id.."Pir3te:Mod:User"..v)
link = database:get(bot_id.."Pir3te:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Pir3te":"'..NAME..'",'
else
t = t..',"'..v..'":{"Pir3te":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', '?? ?  ⁄œœ „Ã„Ê⁄«  «· Ì ›Ì «·»Ê  { '..#list..'}')
end
if text == " ÕœÌÀ «·”Ê—” ??" then
send(msg.chat_id_,msg.id_,'? ?  „ «· ÕœÌÀ')
os.execute('rm -rf Pir3te.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/Pir3te/Pir3te/master/Pir3te.lua')
os.execute('wget https://raw.githubusercontent.com/Pir3te/Pir3te/master/start.lua')
dofile('Pir3te.lua')  
return false
end
if text == " ÕœÌÀ ?" then
dofile("Pir3te.lua")  
send(msg.chat_id_, msg.id_, "? ?  „ «· ÕœÌÀ")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'Pir3te:Chek:Groups','-100'..data.channel_.id_)  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id.."Pir3te:Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not database:sismember(bot_id..'Pir3te:Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'Pir3te:Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'Pir3te:User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."Pir3te:Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."Pir3te:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then   
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
------------------------------------------------------------------------
if text and database:get(bot_id.."Pir3te:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."Pir3te:Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."Pir3te:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"?? ?  „ «“«·… «·«„— „‰ «·„Ã„Ê⁄Â")  
else
send(msg.chat_id_, msg.id_,"?? ? ·« ÌÊÃœ «„— »Â«–« «·«”„  «ﬂœ „‰ «·«„— Ê«⁄œ «·„Õ«Ê·Â")  
end
database:del(bot_id.."Pir3te:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Pir3te:Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."Pir3te:Name:Bot") or "ﬁ—’«‰")
if not database:get(bot_id.."Pir3te:Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' ‘‰Ê —∆Ìﬂ »Â–«' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'·ÊﬂÌ Ê“«Õ› „‰ ”«⁄ “Õ›·Ì ÊÕ÷— Â ??','ŒÊ‘ Ê·œ Ê Ê—œÂ „«· «··Â ??','Ì·⁄» ⁄ «·»‰«  ??', 'Ê·œ “«Ì⁄ Â «·ﬂ«⁄ ????','’«ﬂ ÌŒ»· Ê„⁄÷· ','„Õ·Ê Ê‘Ê«—»Â Ã‰Â« „ﬂ‰«”Â ??????û??','«„Ê  ⁄·ÌÂ ??','ÂÊÂ €Ì— «·Õ» „«· «‰Ì ??','„Ê ŒÊ‘ Ê·œ ’—«ÕÂ ??','«œ»”“ Ê„ÌÕ —„ «·»‰«   ', '›œ Ê«Õœ ﬁ–— ????','„«ÿÌﬁÂ ﬂ· „« «ﬂ„‘Â —ÌÕ Â Ã‰Â« »Œ«Œ »› »«› „«· Õ‘—«  ????û??','„Ê ŒÊ‘ Ê·œ ??' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' ‘‰Ê —∆Ìﬂ »Â«Ì' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {'«·ﬂ»œ „«· «‰Ì ÂÌÂ ','Œ Ê·Ì „«Õ»Â« ','Œ«‰ ‰Ì ÊÌÂ ’œÌﬁÌ ??','»” ·Ê «·ﬂ›Â« «·Â «⁄÷Â« ??','ŒÊ‘ »‰ÌÂ »” ⁄œÂ „ﬂ”—«  “«ÌœÂ Ê‰«ﬁ’Â „‰« Ê„‰« ÊÂÌÂ  œ—Ì »‰›”Â« ??','Ã–«»Â Ê„‰«›ﬁÂ ”Ê ·Ì „‘ﬂ·Â ÊÌÂ «·Õ» „«· Ì ','∆ÊÊÊÊÊÊÊÊ› «„Ê  ⁄ —»Â« ','œÌ—Ê »«·ﬂ„ „‰Â«  ·⁄» ⁄ «·Ê·œ ?? ÷Õﬂ  ⁄ Ê«Õœ ﬁÿ Â «Ì›Ê‰ 7 ','’œÌﬁ Ì ÊŒ Ì Ê—ÊÕÌ ÊÕÌ« Ì ','›œ ÊÕœÂ „‰Õ—›Â ??','”«ﬂ‰Â »«·⁄·«ÊÌ Ê‰ Â Õœœ »⁄œ ·”«‰Â« ·”«‰ œ·«·Â ????','«„ ”ÕÊ—Â ”Õ—  «ŒÊÌ« Ê⁄·ﬂ Â 6 ”‰Ê«  ??','„«Õ»Â« ??','»·Â Â«Ì ÃÂ—Â  ”∆· ⁄·ÌÂ« ø ','»—»ﬂ ∆‰ Â Ê«··Â ›«—€ Ê»ÿ—«‰ Ê„«⁄œﬂ ‘Ì  ”ÊÌ Ã«Ì  ”∆· ⁄ »‰«  «·⁄«·„ Ê·Ì Ì·Â ??','Ì«ŒÌ »‰ÌÂ Õ»Ê»Â »” ·»⁄—ﬂ „⁄„Ì ⁄·ÌÂ«  ‘—» ÂÊ«Ì ??' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
------------------------------------------------------------------------
Pir3te_Started_Bot(msg,data)
Pir3te_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'Pir3te:message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."Pir3te:Lock:edit"..msg.chat_id_) and not Text and not BasicConstructor(result) then
Reply_Status(result,result.sender_user_id_,"reply","?? ? ﬁ«„ »«· ⁄œÌ· ⁄·Ï «·„ÌœÌ«")  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Addictive(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."Pir3te:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."Pir3te:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."Pir3te:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."Pir3te:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local Pir3te_Msg = database:get(bot_id.."Pir3te:Add:Filter:Rp2"..text..result.chat_id_)   
if Pir3te_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","?? ? "..Pir3te_Msg)  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Pir3te:Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Pir3te:Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Pir3te:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Pir3te:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Pir3te:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32mªª  „  ⁄œÌ· Â–« «·‰”ŒÂ »Ê«”ÿÂ Õ”‰ „ƒÌœ ´´\n\27[1;37m')
local list = database:smembers(bot_id..'Pir3te:UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Pir3te:Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'Pir3te:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Pir3te:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Pir3te:Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Pir3te:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Pir3te:Chek:Groups',v)  
end end,nil)
end;CleangGroups();end;end