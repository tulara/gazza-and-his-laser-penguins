local scene = {}

local imgx
local imgy
local sceneQuad

function scene.load()
   scene = love.graphics.newImage("forest-background.jpg")
   scene:setWrap("repeat", "repeat")
   imgx = 0
   imgy = 0
   sceneQuad = love.graphics.newQuad(0, 0, scene:getWidth(), scene:getHeight(), scene:getWidth(), scene:getHeight())
end

function scene.draw()
    love.graphics.draw(scene, sceneQuad, imgx, imgy) 
end

function scene.scroll()
	imgx = imgx - 0.5
end 

return scene