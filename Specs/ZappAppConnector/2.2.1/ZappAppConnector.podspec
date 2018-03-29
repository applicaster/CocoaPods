Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '2.2.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_2.2.1_82065a0e3e39724afbcc0ee19a5a4ad9964905ec.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }

  s.dependency 'ZappPlugins', '~> 2.5.8'
end
