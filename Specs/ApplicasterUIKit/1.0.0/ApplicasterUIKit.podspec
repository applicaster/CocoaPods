Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.0.0"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.0.0_f7573e825386a4f0a8818e890c1c7c4099c52211.zip"
	}

	s.requires_arc = true
	s.preserve_paths = 'ApplicasterUIKit.framework'
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.public_header_files = 'ApplicasterUIKit.framework/Headers/*.h'

end
