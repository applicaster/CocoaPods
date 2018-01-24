Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.20.0"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.20.0_40d9431deb887d59e39421b15a31d33bbb04e1e0.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.0'}

	s.dependency 'ApplicasterSDK', '~> 4.25.0'
	s.dependency 'ApplicasterUIKit', '~> 1.6.0'
	s.dependency 'ZappPlugins', '~> 1.17.0'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.dependency 'ZappAppConnector', '~> 1.3.0'

end