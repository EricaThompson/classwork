require_relative "piece"
require_relative "slideable"

class Bishop < Piece
    include Slideable

    def moves
        array = []
        DIAGONAL_DIRS.each do |pos| #
            array += grow_unblocked_moves_in_dir(pos)
        end
        array
    end


end