Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "4.2.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_4.2.0_66a59b534b4e96d4b150c7539bb46f22e20778fe.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	s.static_framework = true

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES'}

end
