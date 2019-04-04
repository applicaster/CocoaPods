Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "11.0.0"

	s.platform = :ios
	s.ios.deployment_target = "10.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_11.0.0_0844bfd8e4140bac22fe14952c885cbab5ab53e2.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.framework'
	s.resources = [
		'ComponentsSDK.framework/*.nib',
		'ComponentsSDK.framework/*.png',
		'ComponentsSDK.framework/*.jpg',
		'ComponentsSDK.framework/*.jpeg',
		'ComponentsSDK.framework/ZLCustomizationLayouts.plist',
		'ComponentsSDK.framework/ZLComponentsMapping.plist',
		'ComponentsSDK.framework/CACustomComponentsMapping.plist',
		'ComponentsSDK.framework/CAComponentsObserversMapping.plist',
		'ComponentsSDK.framework/CAComponentsMapping.plist',
		'ComponentsSDK.framework/CAComponentsConditionsMapping.plist'
	]

	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.2',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

	s.dependency 'ApplicasterSDK', '~> 9.0.0'
	s.dependency 'ApplicasterUIKit', '~> 6.0.0'
	s.dependency 'ZappPlugins', '~> 8.0.0'
	s.dependency 'ZappGeneralPluginsSDK', '~> 7.0.0'
	s.dependency 'ZappAnalyticsPluginsSDK', '~> 7.0.0'
	s.dependency 'ZappNavigationBarPluginsSDK', '~> 7.0.0'


end
