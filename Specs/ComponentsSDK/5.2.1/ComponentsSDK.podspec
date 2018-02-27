Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "5.2.1"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_5.2.1_08c3cb7cf2f4248b3ddca6c4f2942a94f4c63e2c.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.0'}

	s.dependency 'ApplicasterSDK', '~> 5.2.1'
	s.dependency 'ApplicasterUIKit', '~> 1.7.0'
	s.dependency 'ZappPlugins', '~> 2.1.0'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.dependency 'ZappAppConnector', '~> 2.1.1'

end
