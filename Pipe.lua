Pipe = Class{}

local PIPE_IMGAE = love.graphics.newImage('pipe.png')

function Pipe:init(orientation, y)
    self.x = VIRTUAL_WIDTH
    self.y = y

    self.width = PIPE_IMGAE:getWidth()
    self.height = PIPE_HEIGHT

    self.orientation = orientation
end

function Pipe:update(dt)

end

function Pipe:render()
    love.graphics.draw(
        PIPE_IMGAE, -- image
        self.x, -- x coords
        (self.orientation == 'top' and self.y + PIPE_HEIGHT or self.y), -- y corrds
        0, -- rotation
        1, -- x scale
        (self.orientation == 'top' and -1 or 1) -- y scale
    )
end