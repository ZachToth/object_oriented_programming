class Person
  attr_accessor :name
  def initialize(name)
    @name=name
  end
end

class Student < Person
  def learn 
    "I get it!"
  end

  def greeting
    "Hello my name is #{@name}"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object!"
  end
  def greeting
    "Hello my name is #{@name}"
  end
end

rubyinstructor = Instructor.new("Chris")
bitmakerstudent = Student.new("Christina")

puts rubyinstructor.greeting
puts bitmakerstudent.greeting

puts rubyinstructor.teach
puts bitmakerstudent.learn

puts bitmakerstudent.teach

# using the teach method with the student does not work
# because .teach is a method that is only aviable for objects created from the 
# Instructor class  

