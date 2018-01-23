Pod::Spec.new do |s|
  s.name        = "APSiren"
  s.version     = '1.2.4'
  s.platform    = :ios, '9.0'
  s.summary     = "APSiren Parser"
  s.description = "APSiren Parser. Helps load JSON and parse it with Siren structure."
  s.homepage    = "https://github.com/applicaster/SirenParser-iOS.git"
  s.license     = 'CMPS'
	s.author     = "Applicaster LTD."
	s.source     = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/APSiren_Framework_1.2.4_c8ebb3d6684765b97b6a4c2f13d873f23cf60992.zip"
  }
  s.vendored_frameworks = 'APSiren.framework'

  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '4.0'
              }
end
