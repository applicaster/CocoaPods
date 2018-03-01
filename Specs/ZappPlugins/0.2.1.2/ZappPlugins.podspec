Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "0.2.1.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_0.2.1.2_f1b5978e3f5e1183ff17488af925bb5ce14fd403.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	
	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
