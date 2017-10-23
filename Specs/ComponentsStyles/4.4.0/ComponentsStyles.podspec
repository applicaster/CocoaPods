Pod::Spec.new do |s|
	s.name = "ComponentsStyles"
	s.version = "4.4.0"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "Component Styles"
	s.description = "Component Styles"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
			"http" => "https://dl.bintray.com/applicaster-ltd/pods/ComponentsStyles_Framework_4.4.0_bca104652f49a616fb60c0ca66350882a567228e.zip"
	}

	s.vendored_frameworks = 'ComponentsStyles.framework'

	s.xcconfig = {
								 'SWIFT_VERSION' => '3.2'
	}
end
