local tavernlightWindow
local tavernlightButton
local jumpButton

function init()
  tavernlightWindow = g_ui.displayUI('tavernlight')
  tavernlightWindow:hide()
  tavernlightButton = modules.client_topmenu.addRightButton('tavernlightButton', tr('Tavernlight_test'), '/images/topbuttons/options', toggle)
  jumpButton = tavernlightWindow:recursiveGetChildById('JumpButton')
end

function terminate()
  tavernlightWindow:destroy()
  tavernlightButton:destroy()
end

function disable()
  tavernlightButton:hide()
end

function hide()
  tavernlightWindow:hide()
end

function show()
  tavernlightWindow:show()
  tavernlightWindow:raise()
  tavernlightWindow:focus()
end

function toggle()
  if tavernlightWindow:isVisible() then

    hide()
  else
    show()
  end
end

function Jump()
  -- Randomize Y posistion and X positions start at max window length
  -- move the buttons X position left based on time. (pos.x -= speed x time)
  -- if pos.x <= 0 Randomize Y position and reset X to max
end
   