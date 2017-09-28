class Person
     def whoami; "I'm a person"; end
end

class Parent < Person
     def whoami; super + " and I'm a parent"; end
end

class Child < Parent
     def whoami; puts "I'm a child"; end
end

p = Parent.new
puts p.whoami

c = Child.new
c.whoami
