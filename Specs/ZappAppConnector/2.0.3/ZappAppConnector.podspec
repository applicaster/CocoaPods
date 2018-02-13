Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '2.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_2.0.3_b7cd64d7d51fb4e7f3d7956a52144b8ec5261912.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }

  s.dependency 'ZappPlugins', '~> 2.0.2'
end
