require_relative "KnightPathFinder"

class PolyTreeNode
    attr_accessor :root_node
    #knights starting position from require rel KnightPathFinder?

    def initialize(value)
        @parent = nil
        @value = value # from initializer 
        @children = []
    end


end

#PolyTreeNode.new(2,0)