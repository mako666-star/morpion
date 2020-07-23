require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'

require 'pry'

puts "                           ------------------   BIENVENUE DANS LE MORPION DE LA MORT !!!!! :O ----------------- "
arr_play =[]
puts "Bonjour Player 1,"
puts "Ecrivez-votre prénom :"
print "> "
enter_name = gets.chomp
puts "Choisissez votre pion, X ou O :"
print "> "
enter_pion = gets.chomp
player1 = Player.new(enter_name, enter_pion)

puts "Bonjour Player 2,"
puts "Ecrivez-votre prénom :"
print "> "
enter_name = gets.chomp
puts "Choisissez votre pion, X ou O :"
print "> "
enter_pion = gets.chomp
player2 = Player.new(enter_name, enter_pion)

if enter_pion != "X" || enter_pion != "O"
    puts "Erreur, mauvais pion"
    while enter_pion != "X" || enter_pion != "O"
    puts "Choisissez votre pion, X ou O :"
    print "> "
    enter_pion = gets.chomp
    player1 = Player.new(enter_pion)
end


