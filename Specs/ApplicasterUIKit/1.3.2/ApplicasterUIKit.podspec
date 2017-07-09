Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.3.2"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.3.2_7a53b70d2c77c4e78d16b94c24e766d5858fc5b8.zip"
	}

	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
