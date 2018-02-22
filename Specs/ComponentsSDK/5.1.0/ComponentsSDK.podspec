Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "5.1.0"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_5.1.0_e8df4098dacc928c4a26702379e0f2e23ece0c90.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.0'}

	s.dependency 'ApplicasterSDK', '~> 5.0.3'
	s.dependency 'ApplicasterUIKit', '~> 1.7.0'
	s.dependency 'ZappPlugins', '~> 2.0.2'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.dependency 'ZappAppConnector', '~> 2.0.3'

end
