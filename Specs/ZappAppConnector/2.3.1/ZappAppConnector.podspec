Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '2.3.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_2.3.1_e6a41e9f12f4629d70d5706658c66e68a792c809.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }

  s.dependency 'ZappPlugins', '~> 2.3.0'
end
