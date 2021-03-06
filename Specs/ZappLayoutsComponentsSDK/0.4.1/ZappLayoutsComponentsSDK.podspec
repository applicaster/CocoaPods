Pod::Spec.new do |s|
	s.name = "ZappLayoutsComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "0.4.1"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ZappLayoutComponentsSDK"
	s.description = "ZappLayoutComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLayoutsComponentsSDK_Framework_0.4.1_c0b61de5d2410c0fbad7deace14199efd173e311.zip"
  }
	s.vendored_frameworks = 'ZappLayoutsComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.0'}

	s.dependency 'ApplicasterSDK'
	s.dependency 'ComponentsSDK'
	s.dependency 'ComponentStyles'
	s.dependency 'ZappAppConnector'

end
