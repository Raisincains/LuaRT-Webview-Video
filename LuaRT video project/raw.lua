local ui = require "ui"
require "webview"

-- create a simple Webview 
local win = ui.Window(" ", 425, 240)
local Webview = ui.Webview(win, "https://raisincains.space/whistle.mp4", -107, -120, 640, 480)

win:show()


while win.visible do
  ui.update()
end