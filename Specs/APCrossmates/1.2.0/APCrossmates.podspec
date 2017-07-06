Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.2.0"

	s.ios.deployment_target = "8.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.2.0_b0d5afc9508758d7aa9a90cf958b831f80c739f5.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO'
								 }

	s.dependency "ApplicasterSDK", "= 4.4.0"
	s.dependency 'ZappHelpers', '~> 1.0.0'

end
