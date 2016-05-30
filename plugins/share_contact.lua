do

function run(msg, matches)
send_contact(get_receiver(msg), "0910", "کص", "ننت برو پخش کن خخخ", ok_cb, false)
end

return {
patterns = {
"^[Ss]hare$"

},
run = run
}

end
--#BY AMIR
