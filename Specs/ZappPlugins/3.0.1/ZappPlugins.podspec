Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "3.0.1"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_3.0.1_5014b5317b36c1cb007a790bcfaf6cb451941a9a.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES'}

end
