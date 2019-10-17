#The executing application who needs to require the all the libs where the classes are.

require 'bundler'
Bundler.require
#to use bundle Gemfile

require_relative 'lib/application'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/game'
require_relative 'lib/players'
require_relative 'lib/show'

 launch = Application.new
#to start the game, it searches for the class Application.