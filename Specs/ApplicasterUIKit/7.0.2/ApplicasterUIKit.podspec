Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "7.0.2"
	s.platform = :ios
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit Development"
	s.description = "ApplicasterUIKit Development"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     :git => 'git@github.com:applicaster/ApplicasterUIKit-iOS.git',
                     :tag => s.version.to_s
  }
	s.static_framework = true
	s.public_header_files = 'ApplicasterUIKit/**/*.h'
	s.prefix_header_file = 'ApplicasterUIKit/ApplicasterUIKit-Prefix.pch'
	s.source_files  = 'ApplicasterUIKit/**/*.{h,m,swift}'
	s.exclude_files = ['ApplicasterUIKit/**/*Tests.m', 'ApplicasterUIKit/Info.plist']
	s.private_header_files = 'ApplicasterUIKit/ApplicasterUIKit.h'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.swift_version = '5.0'
	s.static_framework = true

	s.requires_arc = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'SWIFT_VERSION' => '5.0',
								 'OTHER_CFLAGS'  => '-fembed-bitcode',
								 'OTHER_LDFLAGS' => '$(inherited)',
								 'ENABLE_BITCODE' => 'YES'
							 }

  s.dependency 'ZappPlugins'

end
