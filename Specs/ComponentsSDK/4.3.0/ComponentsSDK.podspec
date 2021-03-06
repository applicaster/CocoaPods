Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.3.0"

	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_4.3.0_e72c157ff29aef7bf72bafc26113dd932e0774c5.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.0'}

	s.dependency 'ApplicasterSDK'
	s.dependency 'ApplicasterUIKit'
	s.dependency 'ZappPlugins'
	s.dependency 'ZappHelpers'
	s.dependency 'ZappAppConnector'

end
