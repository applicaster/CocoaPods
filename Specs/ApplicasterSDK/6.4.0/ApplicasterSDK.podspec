Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "6.4.0"

	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_6.4.0_1abbc262f23461d9d28f85371fb03b713891f2d1.zip"
	}
	s.static_framework = true
	s.frameworks = 'Foundation', 'EventKit', 'EventKitUI', 'WebKit', 'AdSupport', 'Accounts', 'Social',
	'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'iAd',
	'CoreData', 'CoreText', 'CFNetwork', 'QuartzCore', 'MobileCoreServices', 'QuickLook', 'AssetsLibrary',
	'MessageUI', 'StoreKit', 'SystemConfiguration', 'Accelerate', 'MediaPlayer', 'AddressBook', 'CoreGraphics', 'SafariServices'
	s.libraries = 'iconv', 'resolv', 'xml2', 'sqlite3.0', 'c++', 'z'
	s.vendored_frameworks = 'ApplicasterSDK.framework'
	s.preserve_paths = 'ApplicasterSDK.framework/*'

	s.resources = [
		'ApplicasterSDK.framework/*.xib',
		'ApplicasterSDK.framework/*.bundle',
		'ApplicasterSDK.framework/*.caf',
		'ApplicasterSDK.framework/*.aiff',
		'ApplicasterSDK.framework/*.png',
		'ApplicasterSDK.framework/*.jpg',
		'ApplicasterSDK.framework/*.jpeg',
		'ApplicasterSDK.framework/APFeedSettings.plist',
		'ApplicasterSDK.framework/ApplicasterSettings.plist',
	]

	s.xcconfig = {
		'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
		'OTHER_LDFLAGS' => '$(inherited)',
		'ENABLE_BITCODE' => 'YES',
		'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
		'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
		'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
		'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
		'SWIFT_VERSION' => '4.1'
	}

	# Public frameworks

	s.dependency 'AFNetworking', '= 3.2.1'
	s.dependency 'CocoaLumberjack/Swift', '= 3.4.2'
	s.dependency 'TTTAttributedLabel', '= 2.1.0'
	s.dependency 'HockeySDK', '= 5.1.2'
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

	s.dependency 'ZappPlugins', '~> 4.5.1'
	s.dependency 'ZappAppConnector', '~> 3.3.0'

end
