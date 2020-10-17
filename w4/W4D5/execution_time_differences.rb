
require "byebug"

def quick(list)
    return list if list.length < 2
    
    pivot = list[0]

    left = list[1..-1].select {|ele| ele < pivot }
    right = list[1..-1].select {|ele| ele > pivot }

    quick(left) + [pivot] + quick(right)
end

def my_min(list)
    result = quick(list)
    result.first
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]  #O(n log n)
p my_min(list)

def my_min(list) 
    smallest = list[0]

    list.each do |num|
        if smallest > num
            smallest = num
        end
    end

    smallest

end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]  #O(n)
p my_min(list)

def largest_contiguous_subsum(list)
    
    subset = []
    (0...list.length).each do |start|
        (start...list.length).each do |end_idx|
            subset << list[start..end_idx] #
        end
    end #n^3

    hash = Hash.new{|h, k| h[k] = []} 

    subset.each do |sub| 
        sum = 0    
        sub.each do |num|
            sum += num
        end
        hash[sum] = sub
    end 

    hash.keys.max

end #n^3

list = [5, 3, -7] 
p largest_contiguous_subsum(list) # => 8
list2 = [2, 3]
p largest_contiguous_subsum(list2) # => 8
list3 = [-5, -1, -3]
p largest_contiguous_subsum(list3) # => -1



def largest_contiguous_subsum2(list)
    largest_sum = list[0]
    current_sum = 0
    list.each.with_index do |ele, idx|
        current_sum += ele 

        if current_sum > largest_sum
            largest_sum = current_sum
        end

        if current_sum < 0
            current_sum = 0
        end

    end

end

list = [5, 3, -7] 
p largest_contiguous_subsum2(list) # => 8
list2 = [2, 3]
p largest_contiguous_subsum2(list2) # => 8
list3 = [-5, -1, -3]
p largest_contiguous_subsum2(list3) # => -1