Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "2.0.4"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_2.0.4_fbee57fc58ca0b0806ac98d49d5c127572f297a9.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'
	
	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
