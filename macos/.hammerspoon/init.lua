-- window strider

--hs.reload()

--hs.loadSpoon("WindowStrider")
--    :bindHotkey({"option"}, "a", { "com.mitchellh.ghostty" })
--    :bindHotkey({"option"}, "s", { "net.imput.helium", "com.google.chrome" })
--    :bindHotkey({"option"}, "d", { "com.jetbrains.intellij", "com.jetbrains.intellij.ce", "com.google.android.studio" })
--    :bindHotkey({"option"}, "f", { "md.obsidian" }) --:launchIfClosed()
--    :bindHotkey({"option"}, "j", { "com.hnc.Discord" })
--    :bindHotkey({"option"}, "k", { "ru.keepcoder.Telegram" }) --:launchIfClosed()
--    :bindPinHotkey({"option"}, "1", "shift") --:launchIfClosed() -- when no launchIfClosed - was't workin with cmd+h
--    :bindPinHotkey({"option"}, "2", "shift")


hs.loadSpoon("WindowStrider")
    :bindHotkey({"option"}, "a", { "com.mitchellh.ghostty" }):launchIfClosed()
    :bindHotkey({"option"}, "s", { "net.imput.helium", "com.google.chrome" })
    :bindHotkey({"option"}, "d", { "com.jetbrains.intellij", "com.jetbrains.intellij.ce", "com.google.android.studio", "dev.zed.Zed" })
    :bindHotkey({"option"}, "f", { "md.obsidian" }):launchIfClosed()
    :bindHotkey({"option"}, "j", { "com.hnc.Discord" })
    :bindHotkey({"option"}, "k", { "ru.keepcoder.Telegram" }):launchIfClosed()
    :bindHotkey({"option"}, "l", { "com.apple.mail" }):launchIfClosed()
    :bindPinHotkey({"option"}, "1", "shift"):launchIfClosed() -- when no launchIfClosed - was't workin with cmd+h
    :bindPinHotkey({"option"}, "2", "shift")

-- swoosher

-- -- keep references to listeners to avoid getting garbage collected

local _keep = {}
---@generic T
---@param it T
---@return T
local function keep(it)
    table.insert(_keep, it)
    return it
end

local swoosherSocketPath = os.getenv("HOME") .. "/.local/state/swoosher/daemon.sock"

local function swoosherSend(cmd)
  local sock = hs.socket.new()
  sock:connect(swoosherSocketPath)
  sock:write(cmd .. "\n", 1, function() sock:disconnect() end)
end

-- Ctrl+Left/Right to switch spaces.
hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
  local flags = event:getFlags()
  local keyCode = event:getKeyCode()

  local arrows = { [123] = "left", [124] = "right" }
  local arrow = arrows[keyCode]
  if arrow and flags.ctrl and not flags.cmd and not flags.alt and not flags.shift then
    swoosherSend(arrow)
    return true
  end

  return false
end):start()
