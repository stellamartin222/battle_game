class Player

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def get_name
    @name
  end
  
  def attack_opponent 
    return 10
  end

  def take_damage
    @health -= 10
  end
end