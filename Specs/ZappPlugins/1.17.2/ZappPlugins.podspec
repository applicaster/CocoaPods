Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "1.17.2"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_1.17.2_78292312b16bb95780f295dc8271301fb0c175c2.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
