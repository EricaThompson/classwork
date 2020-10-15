module Slideable
    def grow_unblocked_moves_in_dir(arg)
        x, y = self.pos #[0,0]
        result = []
        multiplier = 1
        blocked = false
    
        until blocked #false
            var = [arg[0] * multiplier, arg[1] * multiplier] #1,0 
            #rook starts at 0,0
            new_pos = [x + var[0], y + var[1]] #1,0
            if Board.valid_pos?(new_pos) #[1, 0] 
                if board[new_pos] == :N || board[new_pos].color != self.color #1,0
                    result << new_pos 
                end
            else
                blocked = true
            end
            multiplier += 1 #+1
        end
        result
    end
end