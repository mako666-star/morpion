
class Board 
	attr_accessor :array_boardcase, :count_turn
	  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board = {"A1"=>"","B1"=>"", "C1"=>"","A2"=>"","B2"=>"","C2"=>"","A3"=>"","B3"=>"","C3"=>""}
  end

  def play_turn
    #TO DO : une méthode qui :

    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    if @player_value == "x" 
      insert = gets.chomp.to_s
      @board[insert]= "X"
      puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "     
      puts "-----------"     
      puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "     
      puts "-----------"     
      puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} " 
    
    elsif @player_value == "o"   
      puts " Choissisez la case à remplir "
      print "> "
      insert = gets.chomp.to_s
      @board[insert]= "O"
      puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "     
      puts "-----------"     
      puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "     
      puts "-----------"     
      puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} " 
    end
    
	end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    #
    # Il y a 8 combinaisons gagnantes
    #["A1" "A2" "A3"]["A1" "B1" "C1"] ["B1" "B2" "B3"] ["A2" "B2" "C2"] ["C1" "C2" "C3"] ["A3" "B3" "C3"] ["A1" "B2" "C3"] ["A3" "B2" "C1"]
    
    if @board["A1"] && @board["A2"] && @board["A3"] == "X" || @board["B1"] && @board["B2"] && @board["B3"] == "X" || @board["C1"] && @board["C2"] && @board["C3"] == "X" || @board["A1"] && @board["B1"] && @board["C1"] == "X" ||
			@board["A2"] && @board["B2"] && @board["C2"] == "X" || @board["A3"] && @board["B3"] && @board["C3"] == "X" || @board["A1"] && @board["B2"] && @board["C3"] == "X" || @board["A3"] && @board["B2"] && @board["C1"] == "X"   
    	puts "Bravo first_name1 ! Tu as gagné !! Par contre first_name2, t'es nul."
      true
      #@status = "endgame"   
    elsif @board["A1"] && @board["A2"] && @board["A3"] == "O" || @board["B1"] && @board["B2"] && @board["B3"] == "O" || @board["C1"] && @board["C2"] && @board["C3"] == "O" || @board["A1"] && @board["B1"] && @board["C1"] == "O" ||
			@board["A2"] && @board["B2"] && @board["C2"] == "O" || @board["A3"] && @board["B3"] && @board["C3"] == "O" || @board["A1"] && @board["B2"] && @board["C3"] == "O" || @board["A3"] && @board["B2"] && @board["C1"] == "O"          
    	puts "Bravo first_name2 ! Tu as gagné !! Par contre first_name1, t'es nul." 
      #@status = "endgame"
      true
    	else
    	puts "Match nul, aucun gagnant"       
    end
  end
end

=begin
if @board["A1"] && ["A2"] && ["A3"] || ["A1"] && ["B1"] && ["C1"] == "X"     
    	      
  puts "Bravo first_name1 ! Tu as gagné !! Par contre first_name2, t'es nul."     
elsif @board["A1"] && ["A2"] && ["A3"] || ["A1"] && ["B1"] && ["C1"] == "O"       

  puts "Bravo first_name2 ! Tu as gagné !! Par contre first_name1, t'es nul." 
else 
  puts "3"          
end
=end