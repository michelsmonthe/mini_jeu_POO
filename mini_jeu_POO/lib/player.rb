require 'pry'


class Player
  attr_accessor :name, :life_points, :point, :player

  def initialize(name)
    @name = name
    return @life_points = 10
  end

  def show_state
    puts "#{name} a #{life_points } point(s) de vie"
  end

  def gets_damage(point)
    @point = point
    @life_points = life_points - point.to_i
    if life_points <= 0
      puts "le joueur #{name} a été tué !"
    end
  end

  def attacks(player)
    puts "#{name} attaque #{player.name}"
    damage = compute_damage #stockage des domages reçus
    puts "il lui inflige #{damage} points de dommages"
    player.gets_damage(damage) # applique au joueur le domage
  end

  def compute_damage
    return rand (1..6)
  end

end
binding.pry
