require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'game' 
require 'player'
require 'board'
require 'boardcase'



def perform

Game.new.turn

Game.new.new_round

end 

perform


