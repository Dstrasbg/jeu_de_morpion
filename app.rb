require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/players'
require_relative 'lib/show'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/application'

lauch Application.new