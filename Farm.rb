class Farm
  require_relative 'field_size.rb'


  def initialize(name)
@name = name

end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end


#copy & pasted from yesterdays assignment
    def print_main_menu
      puts '[1] Field'
      puts '[2] Harvest'
      puts '[3] Status'
      puts '[4] Relax'
      puts '[5] Exit'
    end



    def harvest
      Field.harvest
    end

    def status
  Field.status
  end

#copy and pasted from yesterdays assignment
    def call_option(user_selected)
  case user_selected
  when 1 then field
  when 2 then harvest
  when 3 then status
  when 4 then relax
  when 5 then exit
end

#adds a new field
  def field
    "What kind of field is it? corn or wheat"
    field = gets.chomp
    "How large is the field in hectares"
    size = gets.chomp
    "Added a #{@field} of #{@size}"
  end


#provides lovley description of your fields
#wants a few
def relax
"You have a beautiful field, relax"
end




end
