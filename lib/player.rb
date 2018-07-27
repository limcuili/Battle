class Player
  attr_reader :name, :hit_points
  DEFAULT_HP = 60

  def initialize(name = 'player', hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.get_damaged
  end

  def get_damaged
    @hit_points -= 10
  end

end
