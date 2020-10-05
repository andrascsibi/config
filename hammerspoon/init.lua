local hyper = {'cmd', 'alt', 'ctrl', 'shift',}


local applicationHotkeys = {
  s = 'Sublime Text',
  c = 'Google Chrome',
  a = 'iTerm',
  d = 'Discord',
  f = 'Slack',
  g = 'giphy capture',
  x = 'Notes',
  n = 'Notes',
  z = 'Spotify',
  q = 'Toggl Track',
  e = 'Eclipse JEE',
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

hs.hotkey.bind(hyper, '0', function()
  hs.reload()
end)

hs.hotkey.bind(hyper, '9', function()
  hs.notify.new({title='Fucker', informativeText='get back to work'}):send()
end)

hs.notify.new({title='Hammerspoon', informativeText='Config loaded'}):send()


hs.window.animationDuration = 0
hs.hotkey.bind(hyper, 'left', function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.left50)
end)
hs.hotkey.bind(hyper, 'up', function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.maximized)
end)
hs.hotkey.bind(hyper, 'down', function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToScreen(win:screen():next())
end)
hs.hotkey.bind(hyper, 'right', function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.right50)
end)
