

class Queen
    attr_reader :color, :value 

    MOVESET = [
        [0, 1],
        [0, 2],
        [0, 3],
        [0, 4],
        [0, 5],
        [0, 6],
        [0, 7],
        [0, -1],
        [0, -2],
        [0, -3],
        [0, -4],
        [0, -5],
        [0, -6],
        [0, -7],
        [1, 0],
        [2, 0],
        [3, 0],
        [4, 0],
        [5, 0],
        [6, 0],
        [7, 0],
        [-1, 0],
        [-2, 0],
        [-3, 0],
        [-4, 0],
        [-5, 0],
        [-6, 0],
        [-7, 0],
         [1,1],
        [2,2],
        [3,3],
        [4,4],
        [5,5],
        [6,6],
        [7,7],

        [-1,-1],
        [-2,-2],
        [-3,-3],
        [-4,-4],
        [-5,-5],
        [-6,-6],
        [-7,-7],

        [1,-1],
        [2,-2],
        [3,-3],
        [4,-4],
        [5,-5],
        [6,-6],
        [7,-7],

        [-1,1],
        [-2,2],
        [-3,3],
        [-4,4],
        [-5,5],
        [-6,6],
        [-7,7]
    ]
    def initialize(color, value = 9)
        @color = color
        @value = value
        @icon = "Q"
    end

     def possible_positions(current_pos)
        @current_pos = current_pos
        @possible_positions = []
        MOVESET.each do |ele|
            new_x = current_pos[0] + ele[0]
            new_y = current_pos[1] + ele[1]
            @possible_positions << [new_x, new_y] if new_x >=0 && new_x <= 7 && new_y >=0 && new_y <= 7
        end
        @possible_positions
    end

    def to_s
       "Q"
    end

end

# queen = Queen.new("black", 5)
# p queen.possible_positions([4, 4])
# p queen.possible_positions([4, 4]).length


