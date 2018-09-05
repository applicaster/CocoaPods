Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "7.2.6"

	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_7.2.6_082daa080c84c939e0d7931de8f9c6a658c1a32d.zip"
	}

	s.static_framework = true
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
								 'SWIFT_VERSION' => '4.1',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

	s.dependency 'ApplicasterSDK', '~> 7.2.0'
	s.dependency 'ApplicasterUIKit', '~> 3.1.0'
	s.dependency 'ZappPlugins', '~> 6.1.0'
	s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'
	s.dependency 'ZappAnalyticsPluginsSDK', '~> 5.1.0'


end
