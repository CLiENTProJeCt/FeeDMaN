do
function run(msg, matches)
if matches[1] == 'پاک کردن' then 
      if not is_sudo(msg) then
        return "فقط مخصوص سودو!"
      end
if matches[2] == 'منع جهانی' then 
local hash = 'gbanned'
redis:del(hash)
send_large_msg(get_receiver(msg), "لیست سوپر بن پاک شد.")
     end
if matches[2] == 'لیست ممنوعیت' and is_owner(msg) then
local hash = 'banned:'..msg.to.id
redis:del(hash) 
send_large_msg(get_receiver(msg), "لیست بن گروه پاک شد.")
         end
    end
 end

return {
  patterns = {
  "(پاک کردن) (.*)$",
  },
  run = run
}
end