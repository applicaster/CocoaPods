Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.9.1"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.9.1_2541982cfa611f9ddcecad1e9a24814960c00ebe.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'
								 }

	s.dependency "ApplicasterSDK", "~> 5.5.0"
	s.dependency 'ZappHelpers', '~> 1.5.0'

end
