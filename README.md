# HTML::Pipeline::CommonmarkFilter

[CommonMarker](https://github.com/gjtorikian/commonmarker) integration for [HTML::Pipeline](https://github.com/jch/html-pipeline).
This generates HTML from [CommonMark markdown](http://commonmark.org/).

The [MarkdownFilter](https://github.com/jch/html-pipeline/blob/master/lib/html/pipeline/markdown_filter.rb) that comes with HTML::Pipeline uses
`github-markdown` which is deprecated.  When [issue #246](https://github.com/jch/html-pipeline/issues/246) is resolved, the built-in markdown
parser may be preferable to this.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html-pipeline-commonmark_filter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html-pipeline-commonmark_filter

## Usage

```ruby
require "html/pipeline"
require "html/pipeline/commonmark_filter"

pipeline = HTML::Pipeline.new([
    HTML::Pipeline::CommonmarkFilter
])

result = pipeline.call <<-CODE
This is *great*:

    some_code(:first)

CODE

puts result[:output].to_s
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

