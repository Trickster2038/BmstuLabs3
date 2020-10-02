class FlatBoard
    def initialize(in_width, in_height)
        @width, @height = in_width, in_height
    end

    def square
        @width * @height
    end
end

class VolumetricBoard < FlatBoard
    def initialize(in_width, in_height, in_depth)
        super(in_width, in_height)
        @depth = in_depth
    end
    def volume
        @depth * square
    end
end

a = VolumetricBoard.new(3,4,2)
p a.volume