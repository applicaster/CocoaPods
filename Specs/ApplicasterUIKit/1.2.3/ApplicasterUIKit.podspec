Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.2.3"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.2.3_a502b7833a7d21362111970a529f2534a68375c0.zip"
	}

	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
