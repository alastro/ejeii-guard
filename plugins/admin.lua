local function set_bot_photo(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = 'data/photos/bot.jpg'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    set_profile_photo(file, ok_cb, false)
    send_large_msg(receiver, 'Photo changed!', ok_cb, false)
    redis:del("bot:photo")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end

    if matches[1] == "setbotphoto" then
    	redis:set("bot:photo", "waiting")
    	return 'Please send me bot photo now'
    end
   
end
return {
  patterns = {
    
    "^([Ss]etbotphoto)$",
	"%[(photo)%]"
  },
  run = run,
}