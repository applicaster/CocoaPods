Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "4.2.3"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_4.2.3_914ff5077acf8d9f3aafd0e01bf1f262fd5a9759.zip"
  }

	s.frameworks = 'Foundation', 'UIKit', 'AVFoundation', 'QuartzCore', 'CoreText', 'StoreKit'
	s.static_framework = true
	s.vendored_frameworks = 'ZappPlugins.framework'
	s.requires_arc = true
	s.xcconfig = { 'SWIFT_VERSION' => '4.1',
							 	 'ENABLE_TESTABILITY' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
							 }

end
