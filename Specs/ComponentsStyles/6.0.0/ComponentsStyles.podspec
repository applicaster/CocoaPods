Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "6.0.0"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_6.0.0_1aab74d634b9eafd709b2e2b8705f9e938889782.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COMPONENTS_STYLE=1',
								'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "COMPONENTS_STYLE"',
								'SWIFT_VERSION' => '4.2'
	}
end
