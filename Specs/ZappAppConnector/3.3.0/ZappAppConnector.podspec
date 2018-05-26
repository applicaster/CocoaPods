Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '3.3.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAppConnector_Framework_3.3.0_4d7a8e9f960b40fd9e77a072d70d9baf8517e60d.zip"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.1',
    'ENABLE_BITCODE' => 'YES'
  }

  s.dependency 'ZappPlugins', '~> 4.5.1'
end
