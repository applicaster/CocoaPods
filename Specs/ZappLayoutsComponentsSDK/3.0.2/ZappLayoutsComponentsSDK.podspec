Pod::Spec.new do |s|
	s.name = "ZappLayoutsComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "3.0.2"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappLayoutComponentsSDK"
	s.description = "ZappLayoutComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLayoutsComponentsSDK_Framework_3.0.2_2d6305ba120c4b331b238a4ce310e6b203ff5d7b.zip"
  }
	s.vendored_frameworks = 'ZappLayoutsComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '4.1'}

	s.dependency 'ApplicasterSDK', '~> 6.0.0'
	s.dependency 'ComponentsSDK', '~> 6.0.0'
	s.dependency 'ComponentsStyles', '~> 5.0.0'
	s.dependency 'ZappAppConnector', '~> 3.0.0'
	s.dependency 'ZappHelpers', '~> 2.0.0'

end
