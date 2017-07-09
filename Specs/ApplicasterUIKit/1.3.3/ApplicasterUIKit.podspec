Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.3.3"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.3.3_db9b6f39faf1ceb32ff9f8d14ec9f796e7b59e79.zip"
	}

	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
