#to initialize the Player class

class Player

  attr_accessor :name, :sign #to read and write the instance varible namean value, the sign X or O
  
    def initialize (name, sign)
      @name = name
      @sign = sign
    end
  
  end #end of class
  