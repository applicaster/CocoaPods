Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.7.1"
	s.ios.deployment_target = "9.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.7.1_7ae8f2fca00e78fe4e9f52c2150e14cd67e8db66.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'
								 }

	s.dependency "ApplicasterSDK", "= 4.19.7"
	s.dependency 'ZappHelpers', '~> 1.4.0'

end
