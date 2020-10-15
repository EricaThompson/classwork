require_relative 'piece'
require_relative 'Steppable'

class Knight < Piece
    include Steppable


    def moves
        knight_dirs = [[-2, -1],[-1,-2],[1,-2],[2,-1],[1,2],[2,1],[-1,2],[-2,1]]
        array = []

        knight_dirs.each do |pos|
            array += move_dir(pos)
        end

        array
    end


end