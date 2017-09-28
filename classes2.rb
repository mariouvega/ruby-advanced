#
class Table
     @@next_table_id = 1
     attr_reader :id

     def self.has_legs?
          true
     end
     #methods that start with self are different type of methods
     def self.next_table_id
          @@next_table_id
     end
     #any code inside the initialize method will run when the .new method is called
     def initialize
  	     @id = @@next_table_id
  	     @@next_table_id += 1
     end

     def preview_next_id
          @@next_table_id
     end

     def change_next_id(next_id)
          @@next_table_id = next_id
     end

end
puts Table.has_legs?
p Table.next_table_id

t = Table.new
p t.id
t2 = Table.new
p t2.id
puts "The next id back at the factory is #{t2.preview_next_id}."

t2.change_next_id(99)
puts "We changed the @@next_table_id and its now #{t2.preview_next_id}"

# #class variables has two @@
# class Table
#   @@next_table_id = 1
# end
