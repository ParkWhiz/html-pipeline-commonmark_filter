$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'

module TestHelpers
  def assert_equal_html(expected, actual)
    assert_equal Nokogiri::HTML::DocumentFragment.parse(expected).to_hash, Nokogiri::HTML::DocumentFragment.parse(actual).to_hash
  end
end

Minitest::Test.send(:include, TestHelpers)
