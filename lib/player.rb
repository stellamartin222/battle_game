class Player

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def get_name
    @name
  end

  def take_damage
    @health -= 10
  end

  def is_dead?
    @health == 0
  end
end