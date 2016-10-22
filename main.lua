

function love.load()
	imgx = 300
	imgy = 300
   rotation = 0
   rotationSpeed = (3.14/180) -- radian = degree of radius length of arc around circle.
	rotationDirection = 1
   love.graphics.setBackgroundColor(102, 204, 255)
   love.window.setMode(1200, 400,{})

   scene = love.graphics.newImage("forest-background.jpg");
	penguin = love.graphics.newImage("penguin.png")
   

	width = penguin:getWidth()
	height = penguin:getHeight()
   subPenguin = love.graphics.newQuad(0, 0, width/2, height, width, height)
end

function love.draw()
    love.graphics.draw(scene, love.graphics:getWidth() / 2 - scene:getWidth()/2,
        love.graphics:getHeight() / 2 - scene:getHeight() / 2) 
    love.graphics.draw(penguin, subPenguin, imgx, imgy, rotation, 0.3, 0.3, width/4, height/2)
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


-- dt*rotation_speed for smoother animation based on varying update times.
function love.update(dt)
   rotation = rotation + (rotationSpeed * rotationDirection)
   if rotation > math.rad(5) or rotation < (-1 * math.rad(5)) then
      rotationDirection = rotationDirection * -1
   end 
end
