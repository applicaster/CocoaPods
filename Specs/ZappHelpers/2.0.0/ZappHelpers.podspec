Pod::Spec.new do |s|
	s.name = "ZappHelpers"
	s.version = "2.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappHelpers"
	s.description = "Zapp Helpers store Extensions and Categories for all other frameworks"
	s.homepage = "https://github.com/applicaster/ZappHelpers-iOS"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappHelpers_Framework_2.0.0_940be8f0f361262f39d631343ae3ca69f1556824.zip"
  }

	s.vendored_frameworks = 'ZappHelpers.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.1'}

end
