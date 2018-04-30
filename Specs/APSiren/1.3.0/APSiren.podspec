Pod::Spec.new do |s|
  s.name        = "APSiren"
  s.version     = '1.3.0'
  s.platform    = :ios, '9.0'
  s.summary     = "APSiren Parser"
  s.description = "APSiren Parser. Helps load JSON and parse it with Siren structure."
  s.homepage    = "https://github.com/applicaster/SirenParser-iOS.git"
  s.license     = 'CMPS'
	s.author     = "Applicaster LTD."
	s.source     = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/APSiren_Framework_1.3.0_efd33f78ae74306c74bb49d8094724c7bb8f341f.zip"
  }
  s.vendored_frameworks = 'APSiren.framework'

  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '4.1'
              }
end
