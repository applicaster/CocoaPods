Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "4.1.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_4.1.0_4e0c6047ca5efd08d0c35657573089c52d93cc1f.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES'}

end
