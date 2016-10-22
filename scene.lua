local scene = {}

function scene.load()
   scene = love.graphics.newImage("forest-background.jpg");
end

function scene.draw()
    love.graphics.draw(scene, love.graphics:getWidth() / 2 - scene:getWidth()/2,
        love.graphics:getHeight() / 2 - scene:getHeight() / 2) 
end

return scene