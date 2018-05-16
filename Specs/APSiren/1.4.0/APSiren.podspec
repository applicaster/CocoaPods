Pod::Spec.new do |s|
  s.name        = "APSiren"
  s.version     = '1.4.0'
  s.platform    = :ios, '9.0'
  s.summary     = "APSiren Parser"
  s.description = "APSiren Parser. Helps load JSON and parse it with Siren structure."
  s.homepage    = "https://github.com/applicaster/SirenParser-iOS.git"
  s.license     = 'CMPS'
	s.author     = "Applicaster LTD."
	s.source     = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/APSiren_Framework_1.4.0_1cff1cf865d01646357d4231dd068cb963aba77d.zip"
  }
  s.vendored_frameworks = 'APSiren.framework'
  s.static_framework = true
  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '4.1'
              }
end
