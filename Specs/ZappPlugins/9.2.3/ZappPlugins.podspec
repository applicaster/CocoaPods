Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "9.2.3"
	s.platform = :ios, :tvos
	s.ios.deployment_target = "10.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevant for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		 :git => 'git@github.com:applicaster/ZappPlugins-iOS.git',
		 :tag => s.version.to_s
  }
	s.frameworks = 'AVFoundation'

	s.ios.source_files  = 'ZappPlugins/**/*.{h,m,swift}'

	s.xcconfig = {  'ENABLE_BITCODE' => 'YES',
				    'SWIFT_VERSION' => '5.0',
					'ENABLE_TESTABILITY' => 'YES',
					'OTHER_CFLAGS'  => '-fembed-bitcode'
							 }

	s.tvos.deployment_target = "10.0"
	s.tvos.source_files  = [
		'ZappPlugins/ZappHelpers/**/*.{h,m,swift}',
		'ZappPlugins/General/Universal/**/*.swift',
		'ZappPlugins/ZappConnector/ZAAppConnector.swift',
		'ZappPlugins/ZappConnector/Protocols/ZAAppDelegateConnectorGenericProtocol.swift',
		'ZappPlugins/ZappConnector/Protocols/ZAAppDelegateConnectorAnalyticsProtocol.swift',
		'ZappPlugins/ZappConnector/ZappPlugins/Player/**/*.swift',
		'ZappPlugins/PluginPresenter/ZPPluginPresenterManager.swift',
		'ZappPlugins/PluginPresenter/Protocols/ZPPluginPresenterProtocol.swift',
		'ZappPlugins/PlayerDependantsPlugins/**/*.swift',
		'ZappPlugins/QBPlayer/**',
 	]
 	s.tvos.exclude_files = [
		'ZappPlugins/ZappHelpers/Swift/iOS/**/*.{h,m,swift}',
		'ZappPlugins/ZappHelpers/ObjectiveC/iOS/**/*.{h,m,swift}',
		'ZappPlugins/ZappConnector/ZappPlugins/Player/ZPPlayerManager.swift'
	]

end
