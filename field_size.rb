class Field

  @@farm = []
  #harvest crops and adds to total harvested
  def self.harvest
    @farm.each do |size|
      @total_harvest = @total_harvest + @size
    "The farm has #{@total_harvest} food so far"
    end

    #displays some info about the farm
      def self.status
        return total_food_produced
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

        def exit
          "Peace"
          exit
        end

end
