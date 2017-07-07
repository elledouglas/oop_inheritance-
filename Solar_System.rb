class System

def initialize
  @bodies = []
  @bodyy = body
end

  def reader
@bodies
    end

def add
  @@bodies << bodyy

end

def total_mess
@bodies.each do |bod|
  bod += 1
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
