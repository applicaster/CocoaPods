Pod::Spec.new do |s|
	s.name = "ZappLayoutsComponentsSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "1.0.0"
	s.platform = :ios
	s.ios.deployment_target = "8.0"
	s.summary = "ZappLayoutComponentsSDK"
	s.description = "ZappLayoutComponentsSDK Pod"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                     "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLayoutsComponentsSDK_Framework_1.0.0_6154ff03fa7cc0252ab3405b1e360d51a5b67a0a.zip"
  }
	s.vendored_frameworks = 'ZappLayoutsComponentsSDK.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
							   'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
								 'SWIFT_VERSION' => '3.0'}

	s.dependency 'ApplicasterSDK'
	s.dependency 'ComponentsSDK'
	s.dependency 'ComponentStyles'

end
