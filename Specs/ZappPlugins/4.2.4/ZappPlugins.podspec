Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "4.2.4"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_4.2.4_b84f48db766d070e4db1414ef4963fe71f6c5c8a.zip"
  }

	# s.static_framework = true
	# s.module_map = 'ZappPlugins.framework/Modules/module.modulemap'
	s.vendored_frameworks = 'ZappPlugins.framework'
	s.requires_arc = true
	s.xcconfig = { 'SWIFT_VERSION' => '4.1',
							 	 # 'ENABLE_TESTABILITY' => 'YES',
								 # 'ENABLE_BITCODE' => 'NO',
							 }

end
