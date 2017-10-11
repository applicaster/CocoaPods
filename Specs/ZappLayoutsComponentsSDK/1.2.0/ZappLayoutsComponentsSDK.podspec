Pod::Spec.new do |s|
	s.name = "ZappLayoutsComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "1.2.0"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappLayoutComponentsSDK"
	s.description = "ZappLayoutComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLayoutsComponentsSDK_Framework_1.2.0_b42b8b19f1e7f6950010f53a4e0cca34323e035d.zip"
  }
	s.vendored_frameworks = 'ZappLayoutsComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.2'}

	s.dependency 'ApplicasterSDK', '~> 4.10.0'
	s.dependency 'ComponentsSDK', '~> 4.8.0'
	s.dependency 'ComponentsStyles', '~> 4.3.0'
	s.dependency 'ZappAppConnector', '~> 1.2.0'

end
