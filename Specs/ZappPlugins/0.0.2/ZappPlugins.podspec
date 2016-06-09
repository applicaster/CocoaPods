Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "0.0.2"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		 :git => 'git@github.com:applicaster/ZappPlugins-iOS.git',
		 :tag => s.version.to_s
  }
	s.source_files  = 'ZappPlugins/**/*.{swift}'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO'}

end
