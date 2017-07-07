class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end
  def reader
    name
  end

  def full_name
"Hi my name is #{@first_name} #{@last_name}"

  end
end



class Student < Person
  attr_reader :knowledge_level

  def initialize(first_name, last_name, field_of_expertise)
  super(first_name, last_name)
  @knowledge_level = 0
end

  #when a student learns, the knowledge_level goes up
  def learn
    @knowledge_level +=1
  end

  def slack
@knowledge_level -= 1 if @knowledge_level > 0
  end

end


class Instructor < Person

  attr_accessor :field_of_expertise, :cohort

  def initialize(first_name, last_name, field_of_expertise)
  super(first_name, last_name)
    @field_of_expertise = field_of_expertise
    @cohort = []
  end


  def teach
    @cohort.each do |student|
      student.learn
  end
#or
#def teach
#@cohort.each { |student| student.learn }
#end

 def full_name
"Professor #{ super }"
 end

end

chris = Instructor.new("Chris", "Smith")
chris.greeting("Chris", "Smith")

christina = Student.new("Christina", "Smith")
christina.greeting("Christina", "Smith")

#8 do
