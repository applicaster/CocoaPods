Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "2.2.3"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_2.2.3_0ae32b3d8e601cd472f2a4c7e80409f9a11c7019.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0',
							 	 'ENABLE_TESTABILITY' => 'YES'}

end
