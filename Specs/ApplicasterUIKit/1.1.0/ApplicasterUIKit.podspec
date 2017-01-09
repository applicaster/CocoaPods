Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.1.0"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.1.0_83835ff977a27bff9940695770e92084b7a62b2d.zip"
	}

	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
