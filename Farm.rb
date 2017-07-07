class Farm
@@farm = []

  def initialize

@total_harvest = 1000
@field = field
@size = size

end

#adds a new field
def field
  "What kind of field is it? corn or wheat"
  field = gets.chomp
  "How large is the field in hectares"
  size = gets.chomp
  "Added a #{@field} of #{@size}"
  @farm << @field
  @farm << @size

end


#harvest crops and adds to total harvested
def harvest
  @farm.each do |harvest|
    "Harvesting #{@total_harvest} food from #{@size} hectare #{@field} field "
  "The farm has #{total_harvest} food so far"

  end

#displays some info about the farm
  def status(field, type)
    return total_food_produced

  end

#provides lovley description of your fields
def relax

"You have a beautiful field, relax"
end

def exit
end















end
