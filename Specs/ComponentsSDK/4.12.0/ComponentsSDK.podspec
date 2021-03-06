Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.12.0"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.12.0_ed2da00b131e282f522216a602f8719dbadd40ae.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.2'}

	s.dependency 'ApplicasterSDK', '~> 4.15.0'
	s.dependency 'ApplicasterUIKit', '~> 1.5.0'
	s.dependency 'ZappPlugins', '~> 1.13.0'
	s.dependency 'ZappHelpers', '~> 1.3.0'
	s.dependency 'ZappAppConnector', '~> 1.2.0'

end
