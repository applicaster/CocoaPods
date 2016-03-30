Pod::Spec.new do |s|
	s.name = "testFramework"
	s.version = "1.0"
	s.ios.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/testFramework_Framework_1.0_.zip"
	}

	s.vendored_frameworks = 'testFramework.framework'	

	# Public frameworks
	s.dependency 'SwiftyJSON'

end
