require 'pry'
#require 'bundler'
#Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new('Michel')
player2 = Player.new('Pierre')

while player1.life_points > 0 && player2.life_points > 0 do #des lors que les jouer1 et jouer2 aurons un score inferieur ou egal à 0,
  puts "Voici l'etat de chaque jouer :"
  puts player1.show_state
  puts player2.show_state

  puts "Passons à la phase d'attaque :"
  puts player1.attacks(player2)
    if player2.life_points <= 0 #sortie de boucle lorsque le score est inférieur ou égal à 0
          break
    else
      puts player.attacks(player1)
    end
end



#binding.pry
