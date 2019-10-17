#to create an instance of a Board class and do the loop of each turn until victory or draw

class Game

	attr_accessor :player_array, :current_player, :new_board

	def initialize(player1, player2)
		@player_array = Array.new #create an array with 2 players inside (usefull to change easaly the current player)
		@player_array << player1
		@player_array << player2
		@current_player = player1
		@new_board = Board.new
	end 

	def each_turn
		while @new_board.victory? == false
			puts "#{@current_player.name}, quel coup veux-tu jouer ?"
			choice = gets.chomp 
			@new_board.boardcase_array.each do |boardcase| 
					if boardcase.name_case == choice #compare 2 strings 
					then choice = boardcase #choice become the object of class Boardcase which has been chosen by the player
					end
				end
			choice.content = @current_player.sign #content of the case become the player sign
			@new_board.drawing_board #to diplay the board
			@current_player = (@player_array.reverse!)[0] #to change the current player 	
			@new_board.count_turn	+= 1 #counter of each turn
			break if @new_board.count_turn == 9 #break of the loop if all the cases are filled without winner
		end #end of while
		
		if @new_board.victory? == true
			@current_player = (@player_array.reverse!)[0] #need to reverse the current player to get the real wiinner
			puts "Le gagnant est #{current_player.name}"
			else puts "Match nul !!!"
		end	

	end

end #end of class
