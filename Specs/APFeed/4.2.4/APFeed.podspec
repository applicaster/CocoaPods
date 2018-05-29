Pod::Spec.new do |s|
	s.name = "APFeed"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.2.4"

	s.ios.deployment_target = "9.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_4.2.4_2ec590e0a04b6d5f95c8c5d6ed56787dbe469953.zip"
	}

	s.vendored_frameworks = "APFeed.framework"
	s.static_framework = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
								 'OTHER_CFLAGS'  => '-fembed-bitcode',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) FEED_ENABLED=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) -DFEED_ENABLED=1'
								 }

	 s.resources = [
 		'APFeed.framework/*.png',
 		'APFeed.framework/*.jpg',
		'APFeed.framework/*.jpeg',
 		'APFeed.framework/*.nib'
 	]
	s.dependency "ApplicasterSDK", "~> 6.4.1"
	s.dependency 'ZappPlugins', '~> 4.5.3'

end
