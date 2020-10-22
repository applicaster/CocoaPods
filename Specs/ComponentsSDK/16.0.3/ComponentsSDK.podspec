Pod::Spec.new do |s|
	s.name = "ComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "16.0.3"

	s.platform = :ios
	s.ios.deployment_target = "10.0"
	s.summary = "ComponentsSDK"
	s.description = "ComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsSDK_Framework_16.0.3_1f1f1ea9e0fda30ae0dd4023695fd15c2d46fd72.zip"
	}

	s.vendored_frameworks = 'ComponentsSDK.xcframework'
	s.resources = [
		'**/ComponentsSDK.framework/*.nib',
		'**/ComponentsSDK.framework/*.png',
		'**/ComponentsSDK.framework/*.jpg',
		'**/ComponentsSDK.framework/*.jpeg',
		'**/ComponentsSDK.framework/ZLCustomizationLayouts.plist',
		'**/ComponentsSDK.framework/ZLComponentsMapping.plist',
		'**/ComponentsSDK.framework/CACustomComponentsMapping.plist',
		'**/ComponentsSDK.framework/CAComponentsObserversMapping.plist',
		'**/ComponentsSDK.framework/CAComponentsMapping.plist',
		'**/ComponentsSDK.framework/CAComponentsConditionsMapping.plist'
	]

	s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '5.1',
							 	 'OTHER_CFLAGS'  => '-fembed-bitcode'}

	s.dependency 'ApplicasterSDK', '~> 13.0.0' 
	s.dependency 'ApplicasterUIKit', '~> 9.0.0' 
	s.dependency 'ZappPlugins', '~> 11.8.0' 
	s.dependency 'Kingfisher'

end
