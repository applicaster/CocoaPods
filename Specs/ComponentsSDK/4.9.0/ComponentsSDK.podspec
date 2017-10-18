Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.9.0"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.9.0_7f0285d6ef20338033cc306f6c9cea2c6da81b44.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.2'}

	s.dependency 'ApplicasterSDK', '~> 4.10.0'
	s.dependency 'ApplicasterUIKit', '~> 1.5.0'
	s.dependency 'ZappPlugins', '~> 1.12.0'
	s.dependency 'ZappHelpers', '~> 1.2.0'
	s.dependency 'ZappAppConnector', '~> 1.2.0'

end
