Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "13.0.0"

	s.platform = :ios
	s.ios.deployment_target = "10.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_13.0.0_c1884b8d9faf4bb71d23e726b3330f1e47bc1f54.zip"
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
								 'SWIFT_VERSION' => '5.1',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

	s.dependency 'ApplicasterSDK', '~> 11.0.0'
	s.dependency 'ApplicasterUIKit', '~> 8.0.0'
	s.dependency 'ZappPlugins', '~> 10.0.0'
	s.dependency 'ZappGeneralPluginsSDK', '~> 9.0.0'
	s.dependency 'ZappAnalyticsPluginsSDK', '~> 9.0.0'
	s.dependency 'ZappNavigationBarPluginsSDK', '~> 9.0.0'


end
