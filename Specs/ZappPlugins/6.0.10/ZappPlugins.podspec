Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "6.0.10"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_6.0.10_c279f2fb1ae9ff1b1f2427d85091cff55ae1f7e5.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

end
