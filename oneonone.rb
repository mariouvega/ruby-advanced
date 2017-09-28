# i = 1
# while i <= 25
#      puts "The square root of #{i} equals to #{Math.sqrt(i)}"
#      i += 2
# end


def element_index(element, my_array)
     i = 0
     while i < my_array.length
          if my_array.include?(element)
               return my_array.index(element)
          else
               return -1
          end
          i += 1
     end
end

puts element_index("b", ["a", "b", "c"])

puts element_index("hello", ["a", "b", "c"])

# while
# each
# map
