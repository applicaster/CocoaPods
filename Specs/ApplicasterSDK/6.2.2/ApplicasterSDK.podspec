Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "6.2.2"

	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_6.2.2_b0e75e4631a840e599e6c9cb340923ef87b8fa89.zip"
	}
	s.static_framework = true

	s.vendored_frameworks = 'ApplicasterSDK.framework'

	s.xcconfig = {
		'ENABLE_BITCODE' => 'NO',
		'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
		'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
		'SWIFT_VERSION' => '4.1'
	}

	# Public frameworks

	s.dependency 'AFNetworking', '= 3.2.1'
	s.dependency 'CocoaLumberjack/Swift', '= 3.4.2'
	s.dependency 'TTTAttributedLabel', '= 2.1.0'
	s.dependency 'HockeySDK', '= 4.1.3'
	s.dependency 'FBSDKCoreKit', '= 4.33.0'
	s.dependency 'FBSDKLoginKit', '= 4.33.0'
	s.dependency 'FBSDKShareKit', '= 4.33.0'
	s.dependency 'FBNotifications', '= 1.0.1'
	s.dependency 'SSZipArchive', '= 2.1.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK', '= 3.7.2'
	s.dependency 'Google-Mobile-Ads-SDK', '= 7.31.0'
	s.dependency 'TwitterKit', '= 3.3.0'
	s.dependency 'TwitterCore', '= 3.1.0'

	# Applicater's Private Pod frameworks

	s.dependency 'ZappPlugins', '~> 4.2.0'
	s.dependency 'SHMKit_Applicaster', '~> 0.1.3'
	s.dependency 'ZappAppConnector', '~> 3.2.0'

end
