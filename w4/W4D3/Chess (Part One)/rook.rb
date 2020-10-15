require_relative "piece"
require_relative "slideable"

class Rook < Piece
    include Slideable

    def moves 
        array = []
        HORIZONTAL_DIRS.each do |pos| #(1,0)
            array += grow_unblocked_moves_in_dir(pos)
        end
        array
    end

end