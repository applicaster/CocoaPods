Pod::Spec.new do |s|
	s.name = "ZappHelpers"
	s.version = "1.5.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappHelpers"
	s.description = "Zapp Helpers store Extensions and Categories for all other frameworks"
	s.homepage = "https://github.com/applicaster/ZappHelpers-iOS"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappHelpers_Framework_1.5.2_a1f09c04c31aee28f687189cf65f1f88d267d1b8.zip"
  }

	s.vendored_frameworks = 'ZappHelpers.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
