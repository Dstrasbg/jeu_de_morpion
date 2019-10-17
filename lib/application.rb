#Class to initialize 2 players and launch the game which is a new instance of Game class

class Application

	attr_accessor :partie ##to read and write the instance varible

	def initialize # calls the class Show with a new board
		Show.new
		create_player1
		create_player2
		@partie = Game.new(@player1, @player2) #class Game
		@partie.each_turn
	end

	def create_player1 #asks the name of the 1st player who plays with the X.
		puts "> Quel est ton nom Joueur 1 ? Tu seras les X"
		print">"
		name_player1 = gets.chomp
		@player1 = Player.new(name_player1, "X")
	end

	def create_player2 #asks the name of the 2nd player who plays with the o.
		puts "> Quel est ton nom Joueur 2 ? Tu seras les O"
		print">"
		name_player2 = gets.chomp
		@player2 = Player.new(name_player2, "0")
	end

end