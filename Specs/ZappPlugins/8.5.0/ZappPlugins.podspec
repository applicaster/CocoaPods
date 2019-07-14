Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "8.5.0"
	s.ios.deployment_target = "10.0"
	s.tvos.deployment_target = "10.0"

	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevant for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_8.5.0_d2b09b3e5f7a4dbb12026e3698eeab1b1e442d5f.zip"
  }

	s.frameworks = 'AVFoundation'
	s.ios.vendored_frameworks = 'Frameworks/iOS/ZappPlugins.framework'
	s.tvos.vendored_frameworks = 'Frameworks/tvOS/ZappPlugins.framework'

	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.2',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}
end
