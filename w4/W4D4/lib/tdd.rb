require "byebug"

class Array
    def my_uniq
        hash = Hash.new
        self.each { |num| hash[num] = num }
        hash.keys
    end

    def two_sum
        sums = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                sums << [i, j] if self[i] + self[j] == 0
            end
        end
        sums
    end

    def my_transpose
        array = Array.new(self.length){[]}
        self.each do |row|
            row.each_with_index do |ele, i|
                array[i] << ele
            end
        end
        array
    end

    def stock_picker
        subs = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                subs << [i, j]
            end
        end

        best_pair = subs[0]
        subs.each do |pair| 
            best_pair = pair if ( self[pair[1]] - self[pair[0]] ) > ( self[best_pair[1]] - self[best_pair[0]] )
        end
        best_pair
    end





end


class TowersOfHanoi
    attr_accessor :board, :num

    def initialize(num)
        raise "Must be an integer!" unless num.is_a? Integer
        @board = Array.new(3){[]}
        @board[0] += (0...num).to_a
        @num = num

    end

    def won?
        return true if @board[1] == (0...num).to_a || @board[2] == (0...num).to_a
        false
    end

end