local player = {}

local imgx
local imgy
local rotation
local rotationSpeed
local rotationDirection
local image
local width
local height
local firstQuad

function player.load() 
    imgx = 300
    imgy = 300
    rotation = 0
    rotationSpeed = (3.14/180) -- radian = degree of radius length of arc around circle.
    rotationDirection = 1
	image = love.graphics.newImage("penguin.png")
	width = image:getWidth()/2
	height = image:getHeight()/2
	firstQuad = love.graphics.newQuad(0, 0, width/2, height, width, height)
end

function player.draw() 
	love.graphics.draw(image, firstQuad, imgx, imgy, rotation, 0.5, 0.5, width/4, height/2)
end

function player.moveRight()
	imgx = imgx + 5
end

function player.moveLeft()
	imgx = imgx - 5
end

function player.wiggle()
	rotation = rotation + (rotationSpeed * rotationDirection)
   if rotation > math.rad(5) or rotation < (-1 * math.rad(5)) then
      rotationDirection = rotationDirection * -1
   end 
end

return player