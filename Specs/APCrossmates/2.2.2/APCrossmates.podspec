Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "2.2.2"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_2.2.2_4817cbca6852c0d1dae1b56971ccea5ef7342400.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"
	s.static_framework = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) CROSSMATES_ENABLED=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) -DCROSSMATES_ENABLED=1',
								 'SWIFT_VERSION' => '4.1'
								 }

	s.dependency "ApplicasterSDK", "~> 6.4.0"
	s.dependency 'ZappPlugins', '~> 4.5.1'

end
