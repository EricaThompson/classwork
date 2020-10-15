module Steppable

    def move_dir(arg)
        x, y = self.pos #0,0
        result = []
        new_pos = [x + arg[0], y + arg[1]] 
        if Board.valid_pos?(new_pos)
            if board[new_pos] == :N || board[new_pos].color != self.color 
                result << new_pos 
            end
        end
        result
    end

end