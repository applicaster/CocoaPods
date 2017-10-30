Pod::Spec.new do |s|
	s.name = "APFeed"

	# The version is replaced with the tag when running the deploy script
	s.version = "3.9.0"

	s.ios.deployment_target = "9.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_3.9.0_90c1cb97a2da4de6f1dd4881e3cdb81f4ea18dec.zip"
	}

	s.vendored_frameworks = "APFeed.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '3.2'
								 }

	s.dependency "ApplicasterSDK", "= 4.13.0"
	s.dependency 'ZappHelpers', '~> 1.3.0'

end
