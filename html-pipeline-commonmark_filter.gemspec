# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html/pipeline/commonmark_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "html-pipeline-commonmark_filter"
  spec.version       = Html::Pipeline::CommonmarkFilter::VERSION
  spec.authors       = ["Mark A. Stratman"]
  spec.email         = ["stratman@gmail.com"]

  spec.summary       = %q{An HTML::Pipeline filter for CommonMarker.}
  spec.description   = %q{Use this pipeline to turn CommonMark markdown into HTML using CommonMarker.}
  spec.homepage      = "https://github.com/ParkWhiz/html-pipeline-commonmark_filter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "html-pipeline", "~> 2.5"
  spec.add_dependency "commonmarker", "~> 0.14.14"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.10"
end
