Pod::Spec.new do |s|
	s.name = "APFeed"
	s.version = "3.5.4"

	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."
	
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_3.5.4_a26b136f60fcb7ee14a1bc10a81f79251f3332e2.zip"
	}

	s.vendored_frameworks = "APFeed.framework"

	s.dependency "ApplicasterSDK", "~> 3.0.8"
end
