require 'board'
class Game < Board 
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :player_array, :current_player, :le_status, :le_board

    def initialize(enter_arr)
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @player_array = enter_arr

      @board = board.new

      @statut = "on going"

      @current_player = current_player
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
      puts display_board
      while victory? != true
        puts " Choissisez la case à remplir "
        print "> "
        player1.play_turn
        if victory? == true 
            break
        else 
            player2.play_turn 
        end
    end


    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
      puts victory?
      @status = "endgame"



    end    
  
  end