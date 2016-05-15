Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.1.1"

	s.ios.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."
	
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.1.1_6b450c14fc870c24ab53d6666d142017aed05b1e.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.dependency "ApplicasterSDK", "= 3.0.8"
end
