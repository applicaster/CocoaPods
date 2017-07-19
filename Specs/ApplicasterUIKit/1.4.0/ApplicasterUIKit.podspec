Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.4.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.4.0_87381dfa9d63a9439707b8d507f39452f674c10d.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
