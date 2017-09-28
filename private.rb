class Table
	def a_public_method
		a_private_method
	end

	private
# every method under is not asscebile
	def a_private_method
	end
end
t = Table.new
t.a_public_method
# any public method in a class can call any private method in a class
# initialize will run once an only once
t = Table.new
t.a_public_method
#t.a_private_method
# send is able to change a private method
t.send :a_private_method

# this shouldv'e been in private rb
class Parent
     private
     def whisper_secret
          puts "parent's secret"
     end
end

class Child < Parent
     def expose_secret
          whisper_secret
     end
end
# a sub class can expose a private method
c = Child.new
c.expose_secret
c.whisper_secret
