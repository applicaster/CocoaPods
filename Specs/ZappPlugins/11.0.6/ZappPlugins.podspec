Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "11.0.6"
	s.ios.deployment_target = "10.0"
	s.tvos.deployment_target = "10.0"

	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevant for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_11.0.6_4d3eb905883ebdca5d20654a115bb3f96e559e55.zip"
  }

	s.frameworks = 'AVFoundation'
	s.ios.vendored_frameworks = 'Frameworks/iOS/ZappPlugins.framework'
	s.tvos.vendored_frameworks = 'Frameworks/tvOS/ZappPlugins.framework'

	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '5.1',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

	s.dependency 'ZappCore'

end
