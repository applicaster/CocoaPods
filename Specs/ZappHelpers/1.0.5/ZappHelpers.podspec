Pod::Spec.new do |s|
	s.name = "ZappHelpers"
	s.version = "1.0.5"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ZappHelpers"
	s.description = "Zapp Helpers store Extensions and Categories for all other frameworks"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		 :git => 'git@github.com:applicaster/ZappHelpers-iOS.git',
		 :tag => s.version.to_s
  }
	s.source_files  = 'ZappHelpers/**/*.{h,m,swift}'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '3.0'}

end
