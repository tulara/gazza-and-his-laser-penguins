local player = require "player"

function love.load()
   love.window.setMode(1200, 400, {})
   scene = love.graphics.newImage("forest-background.jpg");
   player.load() 
end

function love.draw()
    love.graphics.draw(scene, love.graphics:getWidth() / 2 - scene:getWidth()/2,
        love.graphics:getHeight() / 2 - scene:getHeight() / 2) 
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
   player.wiggle()
end
