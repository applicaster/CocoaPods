Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "7.3.14"
	s.ios.deployment_target = "9.0"
	s.tvos.deployment_target = "10.0"

	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevant for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_7.3.14_b09469d11edf8ecb4849c943d553182b4bfb096e.zip"
  }

	s.frameworks = 'AVFoundation'
	s.ios.vendored_frameworks = 'Frameworks/iOS/ZappPlugins.framework'
	s.tvos.vendored_frameworks = 'Frameworks/tvOS/ZappPlugins.framework'

	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.2',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}
end
