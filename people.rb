class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end
  def reader
    name
  end

  def greeting
puts "Hi my name is #{@first_name} #{@last_name}"

  end
end



class Student < Person
  attr_reader :knowledge_level

  #when a student learns, the knowledge_level goes up 
  def learn
    puts "I get it"
  end
end

class Instructor < Person

  attr_accessor :field_of_expertise

  def teach
    puts "Everything in Ruby is an Object"
  end


end

chris = Instructor.new
chris.greeting("Chris")

christina = Student.new
christina.greeting("Christina")

#8 do
