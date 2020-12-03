=begin
def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a
puts some_method(a)
=end

=begin
a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
=end

a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
p no_mutate(a)
