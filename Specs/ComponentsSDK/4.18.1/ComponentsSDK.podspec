Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.18.1"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.18.1_9458d5b82f9975b09f126554588a1f0b83e6fad0.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.0'}

	s.dependency 'ApplicasterSDK', '~> 4.24.0'
	s.dependency 'ApplicasterUIKit', '~> 1.6.0'
	s.dependency 'ZappPlugins', '~> 1.16.0'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.dependency 'ZappAppConnector', '~> 1.3.0'

end
