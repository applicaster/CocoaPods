Pod::Spec.new do |s|
	s.name = "APFeed"
	s.version = "3.5.3"
	
	s.ios.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = ""
	s.author = "Applicaster LTD."
	
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_3.5.3_8230a8532c4b4b19ce15906f3687cab0795d09fd.zip"
	}

	s.vendored_frameworks = "APFeed.framework"

	s.dependency "ApplicasterSDK", "~> 3.0.7"
end
