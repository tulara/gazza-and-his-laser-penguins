

function love.load()
	imgx = 100
	imgy = 100
	love.graphics.setBackgroundColor(102, 204, 255)
	penguin = love.graphics.newImage("penguin.png")

	width = penguin:getWidth()
	height = penguin:getHeight()
end
function love.draw()
    love.graphics.draw(penguin, imgx, imgy)
end

function love.mousepressed(x, y, button, istouch)
   if button == 1 then
      imgx = x - 100
      imgy = y - 100
   end
end

function love.keypressed(key)
   if key == 'p' then
      imgx = imgx + 5
   elseif key == 'o' then
      imgx = imgx - 5
   end
end