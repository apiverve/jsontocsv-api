Pod::Spec.new do |s|
  s.name             = 'APIVerveJSONtoCSVConverter'
  s.version          = '1.2.3'
  s.summary          = 'JSON to CSV Converter converts an array of JSON objects into structured CSV text.'
  s.description      = <<-'DESC'
JSON to CSV Converter converts an array of JSON objects into structured CSV text. It outputs formatted CSV content, detected column headers, and row counts, with support for custom delimiters like commas, tabs, or pipes.

This iOS/macOS SDK provides a convenient way to access the JSON to CSV Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/jsontocsv?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/jsontocsv-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveJSONtoCSVConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
