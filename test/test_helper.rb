$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'

module TestHelpers
  def assert_equal_strip_newlines(expected, actual)
    assert_equal expected.gsub("\n",""), actual.gsub("\n","")
  end
end

Minitest::Test.send(:include, TestHelpers)
