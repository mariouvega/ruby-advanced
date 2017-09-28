# class Table
#      attr_accessor :num_legs
#
#      def initialize (num_legs)
#           raise "Halt!"
#           if num_legs > 0
#                @num_legs = num_legs
#           else
#                raise "Invalid number of legs stupid."
#           end
#      end
# end
#
# table = Table.new(1)
# puts table.num_legs
# puts "Hello World!"

# def add_two (number)
#      unless number.respond_to? :+
#           raise ArgumentError, "Invalid argument"
#      end
#      number + 2
# end
# begin
# puts add_two("")
# rescue ArgumentError
#      puts "Sorry!"
# rescue => e
#      puts "what"
#      puts e.backtrace
# end
# puts "& we're back!!"

def a
     b
end

def b
     begin
          c
     rescue
          nil
     end
end

def c
     d
end

def d
     raise "BOOM!"
end

begin
  a
rescue => e
  puts e.backtrace
end


#rescue Exception NEVER CATCH!!!!!!!!
