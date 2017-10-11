Pod::Spec.new do |s|
	s.name = "ZappHelpers"
	s.version = "1.2.0"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappHelpers"
	s.description = "Zapp Helpers store Extensions and Categories for all other frameworks"
	s.homepage = "https://github.com/applicaster/ZappHelpers-iOS"
	s.license = 'CMPS'
	s.author = { "cmps" => "Applicaster LTD." }
	s.source = {
		 :git => 'git@github.com:applicaster/ZappHelpers-iOS.git',
		 :tag => s.version.to_s
  }
	s.public_header_files = 'ZappHelpers/**/*.h'
	s.source_files  = 'ZappHelpers/**/*.{h,m,swift}'
	s.exclude_files = ['ZappHelpers/**/*Tests.m', 'ZappHelpers/Info.plist']

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
			'SWIFT_VERSION' => '3.2'}

end
