require_relative "piece"

class Pawn < Piece

    def side_attacks
        white_piece = [ [1,-1], [1,1] ]
        black_piece = [ [-1,1], [-1,-1]]

        return white_piece if color == "white"
        black_piece
    end










=begin
    +symbol
    +move_dirs

    -private methods
        at_start_row?
        forward_dir
            returns 1 or -1
        forward_steps
        -side_attacks


=end


end