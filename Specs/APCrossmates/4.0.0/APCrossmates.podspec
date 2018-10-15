Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "4.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_4.0.0_8b9266846ecda52df6fb1c8f5f06711c4289cbfe.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"
	s.static_framework = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'YES',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) CROSSMATES_ENABLED=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "CROSSMATES_ENABLED"',
								 'SWIFT_VERSION' => '4.2',
								 'OTHER_CFLAGS'  => '-fembed-bitcode'
								 }

	s.dependency 'ApplicasterSDK', '~> 8.0.0'
	s.dependency 'ZappPlugins', '~> 7.0.0'

end
