$:.unshift(File.join(File.dirname(__FILE__), %w{.. lib highscore}))

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
  # ignore ...
end

require 'highscore'
require 'test/unit'

module Highscore
  class TestCase < Test::Unit::TestCase
    def test_version
      assert_not_nil Highscore::VERSION
    end
  end
end