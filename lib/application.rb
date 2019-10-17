#Class to initialize 2 players and launch the game witch a new instance of Game class

class Application

	attr_accessor :partie

	def initialize 
		Show.new
		create_player1
		create_player2
		@partie = Game.new(@player1, @player2)
		@partie.each_turn
	end

	def create_player1
		puts "Quel est ton nom Joueur 1 ? Tu seras les X"
		name_player1 = gets.chomp
		@player1 = Player.new(name_player1, "X")
	end

	def create_player2
		puts "Quel est ton nom Joueur 2 ? Tu seras les O"
		name_player2 = gets.chomp
		@player2 = Player.new(name_player2, "0")
	end

end