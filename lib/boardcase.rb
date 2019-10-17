#tp initialize a Boardcase with a name (a1,a2...), a content (empty, X, O), a position (0,1,2,3...)

class Boardcase

	attr_accessor :name_case, :content, :position

	def initialize(name_case, content, position)
		@name_case = name_case
		@content = content
		@position = position
		end 
		
end #end of class