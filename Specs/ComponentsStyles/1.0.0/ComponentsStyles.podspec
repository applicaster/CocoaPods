Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "1.0.0"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "Components Styles"
	s.description = "Components Styles Spec"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_1.0.0_5e2f61bee8f3a84f7e10a0217e12e6c080381297.zip"
  }

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.requires_arc = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'OTHER_LDFLAGS' => '$(inherited) -undefined dynamic_lookup',
								 'ENABLE_BITCODE' => 'NO',
								 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								 'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOMPONENTS_STYLE=1',
								 'SWIFT_VERSION' => '3.0'
							 }
end
