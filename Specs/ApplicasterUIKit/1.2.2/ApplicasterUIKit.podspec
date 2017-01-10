Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.2.2"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.2.2_a2368c57805a007f893816923de571b98baafdbb.zip"
	}

	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
