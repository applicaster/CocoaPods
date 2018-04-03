Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "4.5.6"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_4.5.6_7773b5bdbabcf0065401a364cbb36993d888a94b.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOMPONENTS_STYLE=1',
								'SWIFT_VERSION' => '4.0'
	}
end
