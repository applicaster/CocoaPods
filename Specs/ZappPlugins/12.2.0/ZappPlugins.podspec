Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "12.2.0"
	s.platforms = { 
		:ios => "14.0", 
		:tvos => "14.0" 
	}
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevant for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		:git => 'git@github.com:applicaster/ZappPlugins.2.0-iOS.git',
		:tag => s.version.to_s
  	}

	s.ios.source_files  = 'ZappPlugins/**/*.{h,m,swift}'
	s.tvos.source_files  = [
		'ZappPlugins/ZappHelpers/**/Universal/**/*.{h,m,swift}',
		'ZappPlugins/**/ZPJsonSerializableProtocol.swift',
		'ZappPlugins/**/ZPAnalyticsProviderProtocol.swift'
	]
	s.frameworks = 'AVFoundation'
	s.xcconfig = { 'SWIFT_VERSION' => '5.1',
				   'ENABLE_TESTABILITY' => 'YES' }

	s.dependency 'ZappCore'

end
