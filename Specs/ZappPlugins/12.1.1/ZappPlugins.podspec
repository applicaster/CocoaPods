Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "12.1.1"
	s.platforms = { 
		:ios => "10.0", 
		:tvos => "10.0" 
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
	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
				   'SWIFT_VERSION' => '5.1',
				   'ENABLE_TESTABILITY' => 'YES',
				   'OTHER_CFLAGS'  => '-fembed-bitcode' }

	s.dependency 'ZappCore'

end
