Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "3.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_3.0.0_afc0a9e6d87d0705957a8a1cd36ce789d0b87eb8.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"
	s.static_framework = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) CROSSMATES_ENABLED=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "CROSSMATES_ENABLED"',
								 'SWIFT_VERSION' => '4.1',
								 'OTHER_CFLAGS'  => '-fembed-bitcode'
								 }

	s.dependency "ApplicasterSDK", "~> 6.4.1"
	s.dependency 'ZappPlugins', '~> 4.5.3'

end
