class System

def initialize
  @bodies = []
end

  def reader
@bodies
    end

def add(body)
  @@bodies << body

end

def total_mess
@bodies.each do |body|
  body += 1
  return @bodies
end
end

class Body
  attr_reader :name, :mass
def initialize
@name = name
@mass = mass
end
end

class Planets < Body
  def day
    "24hours"

  end

  def year
    "352 days"
  end
end

class Star < Body


end

class Moon < Body

end

end
