require 'pry'

#Question 1
def sort_array_asc(numbers)
    numbers.sort
end

#Question 2
def sort_array_desc(numbers)
    numbers.sort {|x, y| y <=> x}
end

#Question 3
def sort_array_char_count(numbers)
    result = numbers.sort {|left, right| left.length <=> right.length}
end
    
#Question 4
def swap_elements(numbers)
    numbers[1], numbers[2] = numbers[2], numbers[1]
    return numbers
end

#Advanced 1
def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array  
end

#Advanced 2
swap_elements_from_to([1, 4, 6, 7], 1,2)    

#Question 5
def reverse_array(numbers)
    numbers.reverse
end

#Question 6
def kesha_maker(strings)
    strings.each {|k| k[2] = "$"}
    return strings
end

#Question 7
def find_a(strings)
    strings.select do |a| 
        a.start_with?("a")
    end
end

#Question 8
def sum_array(numbers)
    numbers.inject(0) {|sum, i|  sum + i }
end

#Question 9
def add_s(words)  
    words.each_with_index.collect do |word, index| 
     if index == 1
        "#{word}"
     else 
        "#{word}s"
     end
    end
end