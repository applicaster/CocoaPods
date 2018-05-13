Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '3.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_3.0.0_6c7e233cbf49cbfc784ad2412b0092a448a68bf3.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.1'
  }

  s.dependency 'ZappPlugins', '~> 3.0.0'
end
