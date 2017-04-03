require 'test_helper'
require "html/pipeline"
require "html/pipeline/commonmark_filter"


class HTML::Pipeline::CommonmarkFilterTest < Minitest::Test
  CommonmarkFilter = HTML::Pipeline::CommonmarkFilter

  def setup
  end

  def test_headings
    results = CommonmarkFilter.call(%(# h1-1\n\n## h2-1\n))
    assert_equal_html %(<h1>h1-1</h1><h2>h2-1</h2>), results
  end

  def test_codefence_language
    results = CommonmarkFilter.call(%(```ruby\nputs "Hello, world"\n```\n))
    assert_equal_html %(<pre><code class=\"language-ruby\">puts &quot;Hello, world&quot;</code></pre>), results.gsub("\n","")
  end

  def test_indented_code
    results = CommonmarkFilter.call("    code")
    assert_equal_html %(<pre><code>code</code></pre>), results.gsub("\n","")
  end

  def test_pipeline
    pipeline = HTML::Pipeline.new [ HTML::Pipeline::CommonmarkFilter ]
    results = pipeline.call("# First doc\n\nHello, world!")
    assert_equal_html %(<h1>First doc</h1><p>Hello, world!</p>), results[:output].gsub("\n","")
  end

  #def test_that_it_has_a_version_number
    #refute_nil HTML::Pipeline::CommonmarkFilter::VERSION
  #end

end
