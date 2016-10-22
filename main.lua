local player = require "player"
local scene = require "scene"

function love.load()
   love.window.setMode(1200, 400, {})
   scene.load()
   player.load() 
end

function love.draw()
   scene.draw()
   player.draw()
end

function love.keypressed(key)
   if key == 'p' then
      player.moveRight()
   elseif key == 'o' then
      player.moveLeft()
   end
end

-- dt*rotation_speed for smoother animation based on varying update times.
function love.update(dt)
   scene.scroll()
   player.wiggle()
end
