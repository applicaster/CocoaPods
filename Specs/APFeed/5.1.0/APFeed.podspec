Pod::Spec.new do |s|
	s.name = "APFeed"

	# The version is replaced with the tag when running the deploy script
	s.version = "5.1.0"

	s.ios.deployment_target = "9.0"
	s.summary = "APFeed"
	s.description = "APFeed framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APFeed_Framework_5.1.0_16aa80efe92ea1a784c276420a6ec7d0c5cce989.zip"
	}

	s.vendored_frameworks = "APFeed.framework"
	s.static_framework = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.2',
								 'OTHER_CFLAGS'  => '-fembed-bitcode',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) FEED_ENABLED=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "FEED_ENABLED"'
								 }

	 s.resources = [
 		'APFeed.framework/*.png',
 		'APFeed.framework/*.jpg',
		'APFeed.framework/*.jpeg',
 		'APFeed.framework/*.nib'
 	]
	s.dependency 'ApplicasterSDK', '~> 8.0.0'
	s.dependency 'ZappPlugins', '~> 7.0.0'

end
