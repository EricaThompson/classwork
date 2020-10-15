require_relative "null_piece"
require_relative "rook"
require_relative "queen"
require_relative "bishop"
require_relative "king"
require_relative "knight"

#! hey
# TODO 

class Board
    attr_reader :board
    
    def self.valid_pos?(pos) #[1,0]
        return false if !pos[0].between?(0,7) || !pos[1].between?(0,7) 
        return true
    end

    def initialize
        @sentinal = NullPiece.instance
        @board = Array.new(8) {Array.new(8, @sentinal.color)}
        # every piece of subarr 0,1,6,7 to fill with piece instances
        fill_rows
    end

    def fill_rows # TODO make fill_pawns and fill_back_rows
        @board.each_with_index do |row, i|
            if i < 2
                row.each_with_index do |ele, i2|
                    row[i2] = Piece.new("white", @board, [i,i2])
                end
            elsif i > 5
                row.each_with_index do |ele, i2|
                    row[i2] = Piece.new("black", @board, [i,i2])
                end
            end
        end
    end

    def [](pos)
        row, col = pos
        #@board[position[0]][position[1]]
        @board[row][col]
    end
    
    def []=(pos, value)
        row, col = pos
        @board[row][col] = value
    end

    def move_piece(start_pos, end_pos) # TODO change logic to check pieces array of available moves and compare to end_pos
        raise "no piece here!" if self[start_pos] == :N || !Board.valid_pos?(start_pos)

        if Board.valid_pos?(end_pos) && self[end_pos] == :N
            self[end_pos] = self[start_pos] 
            self[start_pos].pos = end_pos
            self[start_pos] = :N
            p "Moved generic piece to #{end_pos}!" # TODO update generic to #{piece_type}
        else
            p "Position occupied!" # TODO change later..
        end
        @board # TODO temp render
        
    end


end