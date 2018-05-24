Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '3.2.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_3.2.0_e96185f30f3ab768b9ae915f4e5d8bd4fd0bdf6d.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.1'
  }

  s.dependency 'ZappPlugins', '~> 4.2.0'
end
