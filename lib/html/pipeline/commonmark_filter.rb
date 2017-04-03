require "html/pipeline/commonmark_filter/version"
require "html/pipeline/filter"
require "commonmarker"

module HTML
  class Pipeline
    class CommonmarkFilter < Filter
      def call
        parse_option = context[:parse_option] || :DEFAULT
        CommonMarker.render_html(@html, parse_option)
      end
    end
  end
end
