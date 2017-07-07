class Person

  def initialize
    @name = name
  end
  def reader
    name
  end

  def greeting(name)
puts "Hi my name is #{@name}"

  end
end



class Student < Person
  def learn
    puts "I get it"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end

end

chris = Instructor.new
chris.greeting("Chris")

christina = Student.new
christina.greeting("Christina")

#8 do
