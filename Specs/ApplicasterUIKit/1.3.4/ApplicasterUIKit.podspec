Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.3.4"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.3.4_1bcff0d356dfc393a9bb63350b7d32e833219dc2.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
