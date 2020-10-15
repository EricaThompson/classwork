require_relative 'piece'
require_relative 'Steppable'

class King < Piece
    include Steppable

    def moves
        array = []
        kingdom = HORIZONTAL_DIRS + DIAGONAL_DIRS
        kingdom.each do |pos|
            array += move_dir(pos)
        end
        array
    end

end