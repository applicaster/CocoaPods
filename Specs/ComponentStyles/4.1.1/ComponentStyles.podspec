Pod::Spec.new do |s|
	s.name = "ComponentStyles"
	s.version = "4.1.1"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		:git => 'https://github.com/applicaster/ComponentStyles-iOS.git',
		:tag => s.version.to_s
  }

  s.source_files  = 'ComponentStyles/**/*.swift'

	s.resources = [
		'Resources/xibs/**/*.xib',
		'Resources/*.plist'
	]

	s.requires_arc = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'OTHER_LDFLAGS' => '$(inherited) -undefined dynamic_lookup',
								 'ENABLE_BITCODE' => 'NO',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOMPONENTS_STYLE=1',
								 'SWIFT_VERSION' => '3.0'
							 }
end
