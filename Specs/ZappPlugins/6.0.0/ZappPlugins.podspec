Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "6.0.0"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		 :git => 'git@github.com:applicaster/ZappPlugins-iOS.git',
		 :tag => s.version.to_s
  }
	s.source_files  = 'ZappPlugins/**/*.{h,m,swift}'
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
								 'SWIFT_VERSION' => '4.1',
							   'ENABLE_TESTABILITY' => 'YES',
								 'OTHER_CFLAGS'  => '-fembed-bitcode'
							 }

end
