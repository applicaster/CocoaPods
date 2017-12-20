Pod::Spec.new do |s|
	s.name = "ZappLayoutsComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "1.7.2"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappLayoutComponentsSDK"
	s.description = "ZappLayoutComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLayoutsComponentsSDK_Framework_1.7.2_810f7e0e8e2ec816886521e83d3fcdb75a5c01e9.zip"
  }
	s.vendored_frameworks = 'ZappLayoutsComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.0'}

	s.dependency 'ApplicasterSDK', '~> 4.19.0'
	s.dependency 'ComponentsSDK', '~> 4.16.0'
	s.dependency 'ComponentsStyles', '~> 4.5.0'
	s.dependency 'ZappAppConnector', '~> 1.3.0'

end
