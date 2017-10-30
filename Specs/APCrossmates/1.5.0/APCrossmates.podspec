Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.5.0"

	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.5.0_9e0894cd529df56184459551b63ca8970d451b0b.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO'
								 }

	s.dependency "ApplicasterSDK", "= 4.13.0"
	s.dependency 'ZappHelpers', '~> 1.3.0'

end
