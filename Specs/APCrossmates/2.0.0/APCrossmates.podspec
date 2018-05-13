Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "2.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_2.0.0_5de7298bfb67f287537421a601efceb9e7e9592c.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1'
								 }

	s.dependency "ApplicasterSDK", "~> 6.0.0"
	s.dependency 'ZappHelpers', '~> 2.0.0'

end
