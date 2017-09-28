class Table
     #this can be used to replace the 2 under it
     attr_accessor :num_legs
     # attr_reader :num_legs
     # attr_writer :num_legs
     def initialize (num_legs)
                   @tabletop = []
                   @num_legs = num_legs
    end
     def put_on(something)
         @tabletop << something
     end

     def look_at
         @tabletop
     end

    #  def num_legs=(new_number_of_legs)
    #     @num_legs = new_number_of_legs
    # end
end

a_table = Table.new 4
a_table.put_on 1
a_table.put_on 2

p a_table.look_at
puts "This table has #{a_table.num_legs} legs"
puts "Actually wants to chop off a leg"
a_table.num_legs = 3
puts "This table now has #{a_table.num_legs} legs"



# a_table = Table.new
#
# puts a_table.class
# print a_table.methods
#
# puts a_table.hash
