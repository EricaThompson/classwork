# require_relative "null_piece"

class Piece
    HORIZONTAL_DIRS = [[1,0], [-1,0], [0,1], [0,-1]]
    DIAGONAL_DIRS = [[-1,-1],[-1,1],[1,-1],[1,1]]

    attr_reader :color, :board
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
end