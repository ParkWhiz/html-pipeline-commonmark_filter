require "html/pipeline/commonmark_filter/version"
require "html/pipeline/filter"
require "commonmarker"

module HTML
  class Pipeline
    class CommonmarkFilter < Filter
      def call
        parse_option = context[:parse_option] || :DEFAULT
        CommonMarker.render_doc(@html, parse_option).to_html
      end
    end
  end
end
