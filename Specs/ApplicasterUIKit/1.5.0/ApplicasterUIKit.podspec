Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.5.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.5.0_0ddb83281e07fba7f6e1556f48f45de905372225.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '3.2'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
