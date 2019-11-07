Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "9.0.0"
	s.platform = :ios
	s.ios.deployment_target = "10.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_9.0.0_77b892f117608abdf2cf10c193a9d84a88717952.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "COMPONENTS_STYLE"',
								'SWIFT_VERSION' => '5.1'
	}
end
