Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "5.0.3"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_5.0.3_2de82cef018dbf5f7f36ca4a1c625d9ead254067.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

end
