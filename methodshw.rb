# def say_hello(name)
#      puts "Why, hello there " + name
# end

#   say_hello("Jack")
# def add_two(number)
#   if number.respond_to? :+
#     if number.respond_to? :push
#       number.push 2
#     else
#       (number.to_i) + 2
#     end
#   end
# end

# def test_add_two
#     p add_two(1)
#     p add_two(1.0)
#     p add_two(nil)
#     p add_two({})
#     p add_two([])
#     p add_two(false)
#     p add_two(" ")
# end

# test_add_two

pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron",
     "Brinkley", "Bella"]

     def super(pets)
          pets.each do |i|
               i.include? "s"
               #  puts "My name starts with an S for super!”
           end
      end

      super(pets)
