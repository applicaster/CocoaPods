Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '3.1.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_3.1.0_0bf61d2ab8f8407a891440aa38919b23ba618198.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.1'
  }

  s.dependency 'ZappPlugins', '~> 4.1.0'
end
