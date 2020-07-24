require 'pry'
require_relative 'Board' #On fait appel à Board.rb 
require_relative 'Player' #et de Player.rb

class Game
	attr_accessor :current_player, :status, :array_player, :count_turn 
	  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

    def initialize()
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      #system "clear"
  		puts"                         -------------------------------------------------- "
  		puts"                         |    Saluuuut , bienvenue au jeu du Morpion      | "
  		puts"                         |                                                | "
  		puts"                         -------------------------------------------------- \n"


      current_player = Player
      @status = "on going"
      
      puts " Joueur 1, Quel est ton prénom ?"
  		name_p = gets.chomp

  		player1 = Player.new(name_p, "X")

  		puts " Joueur 2, Quel est ton prénom ?"
  		name_r = gets.chomp

  		player2 = Player.new(name_r, "O")
  		@count_turn = 0
      @bora = Board.new
    
    end

    def turn()
        #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
        # On lance la partie,
       @board = {"A1"=>"","B1"=>"", "C1"=>"","A2"=>"","B2"=>"","C2"=>"","A3"=>"","B3"=>"","C3"=>""} 
        round = 0 
       
        while round <= 9
            @bora.play_turn
            
            if @bora.victory? 
              break 
            else @bora.play_turn
            round = round +1  
            end 
        end
    end

    def board
      
      puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "     
      puts "-----------"     
      puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "     
      puts "-----------"     
      puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} " 
      
    end

    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
        puts "Une nouvelle partie ? oui ou non "
        response = gets.chomp
        if response == "oui"
          puts board
        end
    end

    def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    @bora.victory?
    new_round
  	end  
end

