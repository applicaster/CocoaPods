Pod::Spec.new do |s|
	s.name = "ZappHelpers"
	s.version = "1.4.7"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappHelpers"
	s.description = "Zapp Helpers store Extensions and Categories for all other frameworks"
	s.homepage = "https://github.com/applicaster/ZappHelpers-iOS"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappHelpers_Framework_1.4.7_0f669bfbf5a11868d0d85087a97afc520e32f5f5.zip"
  }

	s.vendored_frameworks = 'ZappHelpers.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
