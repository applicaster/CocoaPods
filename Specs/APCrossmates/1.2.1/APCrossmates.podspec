Pod::Spec.new do |s|
	s.name = "APCrossmates"
	s.version = "1.2.1"

	s.ios.deployment_target = "8.0"
	s.summary = "APCrossmates"
	s.description = "APCrossmates framework"
	s.homepage = "https://applicaster.com"
	s.license = "Applicaster"
	s.author = "Applicaster LTD."

	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/APCrossmates_Framework_1.2.1_d07917ffd0246be69540a77c6080f82d4dfcb87c.zip"
	}

	s.vendored_frameworks = "APCrossmates.framework"

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO'
								 }

	s.dependency "ApplicasterSDK", "= 4.4.2"
	s.dependency 'ZappHelpers', '~> 1.0.0'

end
