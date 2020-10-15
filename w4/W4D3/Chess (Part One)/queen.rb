require_relative "piece"
require_relative "slideable"

class Queen < Piece
    include Slideable

    def moves
        array = []
        queendom = HORIZONTAL_DIRS + DIAGONAL_DIRS
        
        queendom.each do |pos|
            array += grow_unblocked_moves_in_dir(pos)
        end
        array
    end

end