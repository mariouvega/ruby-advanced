# 5.times { |number|
#     puts "Hello #{number}"
# }
# puts
#
# 5.times do |number|
#     puts "Hello #{number}"
# end

# puts
#
# p (:a .. :z).to_a.reverse


# (1..5).each { |number|
#   puts "Counted to #{number}..."
# }

# (1..5).each {|i| puts i }


# for num in (1..5)
#   puts num
# end
#
# (1..5).each { |num|
#   puts num
# }

# (1..5).each {|num|
#   if num.even?
#     puts "Even"
#   else
#     puts "Odd"
#   end
# }

# result = (1..5).map do |num|
#   if num.even?
#     "Even"
#   else
#     "Odd"
#   end
# end
#
# puts result.sample
# p result


# puts (1..5).select { |num|
#   num.even?
# }
# puts (1..5).reject { |num|
#   num.even?
# }

# puts [1,2,3].any? {|n| n.even? } #chain or or's
# puts [1,2,3].all? {|n| n.even? } #with all they all have to true
# puts [1,2,3].one? {|n| n.even? } #checks if one of them is true
# puts [1,2,3].none? {|n| n.zero? } #checks if none


# p (1..50).to_a.reduce(:+)


# def puts_hello_wyncode
#     if block_given?
#         puts yield "Wyncode"
#     else
#         puts "No block given."
#     end
# end
#
# puts_hello_wyncode { |name| "Hello #{name}" }

def add_two(number)
  number + 2
end
puts add_two(20)
