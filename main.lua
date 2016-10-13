love.graphics.setBackgroundColor(102, 204, 255)

function love.load()
	penguin = love.graphics.newImage("penguin.png")
end
function love.draw()
    love.graphics.draw(penguin, 100, 100)
end