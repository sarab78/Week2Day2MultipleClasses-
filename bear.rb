class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []

  end
 def roar
   "Rooooooar"
 end

 def food_count
   @food.size
 end

 def take_fish_from_river(river)
   fish = river.get_fish()
   @food << fish if ¡fish.nil?
 end
end
