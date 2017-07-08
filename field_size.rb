class Field
  attr_accessor :size :hectares



  @@farm = []

  def initialize(size)
    @size = size
#not sure if I need this because I have a create class

  end
  #harvest crops and adds to total harvested


  def self.harvest
    @farm.each do |size|
      @total_harvest = @total_harvest + @size
    "The farm has #{@total_harvest} food so far"
    end

    #displays some info about the farm
      def self.status
        "The farm has harvested #{total_food_produced} food so far"
      end

      def self.create(size)
        field_type = Field.new(size)
        @@farm << field_type
      end

        #provides lovley description of your fields
        #wants a few
        def relax
        "You have a beautiful field, relax"
        end

        def exit
          "Peace"
          exit
        end

end

class Corn < Field
  def initialize
    @size = size
    @hectares = 50
    ebd
end

class Wheat < Field

  def initialize
    @size = size
    @hectares = 100
  end

end
