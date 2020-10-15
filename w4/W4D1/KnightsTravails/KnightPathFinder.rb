require_relative "PolyTreeNode"

class KnightPathFinder
    # attr_reader :start_pos, :root_node
    attr_accessor :root_node, :start_pos 

    @@root_node = nil

    def self.root_node=(new_value)
        @@root_node = new_value
    end

    def self.root_node
        @@root_node
    end

    def self.valid_moves(position) #[0,0]
        possible_positions = KnightPathFinder.directions.map do |move|
            move.map.with_index do | dir, i | #[-1,-2], 1.-1, i0, 2. -2, i1
                dir + position[i] #[] + [0] = [-1]
            end
        end
        possible_positions.select {|valid| (valid[0] >= 0 && valid[1] >= 0) && (valid[0] <= 7 && valid[1] <= 7)  }

        # what is the relativity of the avaiable positions to a knight in the middle 
        #start = [0,0]
        
    end

    def self.directions
        
        dir = [
            [-1, -2], 
            [-2, -1],
            [-2, 1],
            [-1, 2],
            [1, -2],
            [2, -1],
            [2, 1],
            [1, 2]
        ]

        return dir

    end


    def initialize(start_pos)
        @start_pos = start_pos
        KnightPathFinder.root_node = start_pos
        @considered_pos = [start_pos]
        # self.build_move_tree(value)
        
    end

    def new_move_positions(pos) 
        directions = KnightPathFinder.valid_moves(pos) # should send position to valid_moves(pos), 

        considered = directions.select {|position| !@considered_pos.include?(position) }

        @considered_pos += considered + [pos] 

        considered
    end

    def build_move_tree
        queue = [PolyTreeNode.new(KnightPathFinder.root_node)]

        # PolyTreeNode.new(value)
        # PolyTreeNode.new(@start_pos)
    end

end

=begin
    1. What tree can the polytreenode can the 
=end

#KPF.new([0,0]).build_move_tree([7,7])
#[[0,0] .... [7,7]]

=begin
create class KnightPathFinder(starting_pos)
finding shortest path from start to finish   
start = [0,0]
grid 7x 7 indices
[0, 0]
+2, +1
+1, +2

 0 1 2 3 4 5 6 7
0k   k  
1
2  k
3
4
5
6
7

0,0,  
2 1
0,2
=
-2,+1


0,0
results []
if i1 < 7 && i2 < 7
    if ((i1+2) || (i1-2)) && ((i2-1) || (i2+1)) 


    demo position(3,3)
    possible locations:
above 
    3: 2, 1 (-2)
    1. 1, 2 (-1)
    
    2: 1, 4 (+1)
    4: 2, 5 (+2)

root:  3, 3

below
    5: 4, 1 ()
    7: 5, 2 

    8: 5, 4
    6: 4, 5

end


top_left1 = [-1, -2] #[4, 4] => [3, 2] 
top_left2 = [-2, -1]
top_right1 = [-2, 1]
top_right2 = [-1, 2]
bottom_left1 = [1, -2]
bottom_left2 = [2, -1]
bottom_right1 = [2, 1]
bottom_right2 = [1, 2]


=end

# top_left1 = [-1, -2] #[4, 4] => [3, 2] 
# top_left2 = [-2, -1]
# top_right1 = [-2, 1]
# top_right2 = [-1, 2]
# bottom_left1 = [1, -2]
# bottom_left2 = [2, -1]
# bottom_right1 = [2, 1]
# bottom_right2 = [1, 2]




