Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "4.5.3"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_4.5.3_234da099dbc210547442ff52fb379d384e3faaed.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) -DCOMPONENTS_STYLE=1',
								'SWIFT_VERSION' => '4.0'
	}
end
