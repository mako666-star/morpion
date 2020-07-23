require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'
require 'boardcase'
require 'application'
require 'show'

arr_player = []
puts " Joueur 1, Quel est ton prénom ?"
print "> "
first_name1 = gets.chomp

player1 = Player.new(first_name1, "X")
arr_player << player1
puts " Joueur 2, Quel est ton prénom ?"
print "> "
first_name2 = gets.chomp

player2 = Player.new(first_name2, "O")
arr_player << player2

Board.new(arr_player)
# A CHAQUE TOUR AFFICHER LE PLATEAU DE JEU
#puts "#{playeur}, c'est à ton tour de jouer !"

# LES JOUEURS JOUENT A TOUR DE ROLE JUSQU'A CE QUE L'UN DES JOUEURS NE GAGNE OU QUE LE PLATEAU SOIT REMPLI
# Faire une boucle et verifier s'il y a un gagnant ou que le plateau est rempli

#S'IL Y A UN GAGNANT puts " Youpiii #{playeur}, tu as gagné !" SI MATCH NUL  puts " GAME OVER ! Match nul !! "
# fin de la boucle
# puts "Voulez-vous lancer une nouvelle partie ? oui ou non "
# print ">"
# response = gets.chomp
# if response == "oui" ... elsif response == "non"


#Application.new.perform

