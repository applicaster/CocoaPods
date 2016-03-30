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
	s.dependency 'e-planning', '~> 1.15'
	s.dependency 'Freewheel', '~> 5.18.2'
	s.dependency 'Appoxee', '~> 4.0.7'
	s.dependency 'Akamai-Analytics', '~> 1.3'
	s.dependency 'MPNotificationView_Applicaster', '~> 1.1.2'
	s.dependency 'FLAnimatedImage_Applicaster','~> 1.0.9'
	
end
