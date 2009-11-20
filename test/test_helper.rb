require 'rubygems'
require 'test/unit'
require 'shoulda'

require "#{File.dirname(__FILE__)}/../patterns/strategy.rb"
require "#{File.dirname(__FILE__)}/strategy_test.rb"

require "#{File.dirname(__FILE__)}/../patterns/template.rb"
require "#{File.dirname(__FILE__)}/template_test.rb"


require "#{File.dirname(__FILE__)}/../patterns/block_strategy.rb"
require "#{File.dirname(__FILE__)}/block_strategy_test.rb"

# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'patterns'))
# $LOAD_PATH.unshift(File.dirname(__FILE__))

#Dir.glob(File.join(File.dirname(__FILE__), "../patterns/#{File.dirname(__FILE__)}.rb")).each {|f| require f }
# Dir.glob(File.join(File.dirname(__FILE__), '*_test.rb')).each {|f| require f }