This was made using LuaRT.


This is a very small joke project I made but it turned out to be kinda annoying to do so i'm gonna write it down on how to do it

Currently LuaRT does not support video formats as a module, so I jerry-rigged it together using Webview.

the code i used :



	--modules
	local ui = require "ui"
	require "webview"

	--This implements the Window module
	local win = ui.Window(" ", 425, 240)

	--This implements the Webview module
	local Webview = ui.Webview(win, "https://raisincains.space/whistle.mp4", -107, -120, 640, 480)

	win:show() --This uses the "show" function for the window module to make it visible

	--This makes sure the window doesn't close instantly, i'm sure there is a simplier way this is just how I learnt it
	while win.visible do 
	  ui.update()
	end



Using RTC which is also made by "Samyeyo", the creator of LuaRT. I compiled the raw lua file into a executable.

The command used:


	rtc -w -lwebview [path]\raw.lua .


Using that I had an executable which I then added Lua54.dll to the same folder as the dynamic option (which was used) does not come preloaded with Lua54 binaries.

It is possible to change the icon using RTC but I decided not to. Rather I used a program called "Resource Hacker". 

Inside of that program it is possible to change the icon in a way that even if you send it to a friend you do not have to leave the icon in the folder.

Links:

https://luart.org

https://github.com/samyeyo

https://github.com/samyeyo/rtc

https://angusj.com/resourcehacker/

thanks for reading this far
