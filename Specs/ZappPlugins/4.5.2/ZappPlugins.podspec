Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "4.5.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_4.5.2_7cf4a750afa8d75a01fe80f1105ff47c904f55da.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	s.static_framework = true

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES'}

end
