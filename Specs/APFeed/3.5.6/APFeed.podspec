Pod::Spec.new do |s|
	s.name = "APFeed"

	# The version is replaced with the tag when running the deploy script
	s.version = "3.5.6"

	s.ios.deployment_target = "8.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."
	
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_3.5.6_3e0344c35811cc7b7d108665f2b8859a3cc8ec08.zip"
	}

	s.vendored_frameworks = "APFeed.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO'
								 }

	s.dependency "ApplicasterSDK", "= 3.0.13"
end
