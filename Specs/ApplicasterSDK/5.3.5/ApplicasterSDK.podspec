Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "5.3.5"

	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_5.3.5_e296d980bffc03bf89415760e179efbc237914c5.zip"
	}

	s.frameworks = 'Foundation', 'EventKit', 'EventKitUI', 'WebKit', 'AdSupport', 'Accounts', 'Social',
	'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'iAd',
	'CoreData', 'CoreText', 'CFNetwork', 'QuartzCore', 'MobileCoreServices', 'QuickLook', 'AssetsLibrary',
	'MessageUI', 'StoreKit', 'SystemConfiguration', 'Accelerate', 'MediaPlayer', 'AddressBook', 'CoreGraphics', 'SafariServices'
	s.libraries = 'iconv', 'resolv', 'xml2', 'sqlite3.0', 'c++', 'z'

	s.vendored_frameworks = 'ApplicasterSDK.framework'

	s.xcconfig = {
		'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
		'OTHER_LDFLAGS' => '$(inherited) -objc -l"AdManager" -framework "AppoxeeSDK" -framework "GoogleMobileAds" -framework "HockeySDK" -framework "GoogleInteractiveMediaAds"',
		'ENABLE_BITCODE' => 'NO',
		'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
		'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
		'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
		'SWIFT_VERSION' => '4.0'
	}

	# Public frameworks

	s.dependency 'AFNetworking', '~> 3.1.0'
	s.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
	s.dependency 'TTTAttributedLabel', '~> 2.1.0'
	s.dependency 'NKJWT', '~> 0.1.0'
	s.dependency 'FormatterKit', '~> 1.8.1'
	s.dependency 'HockeySDK', '~> 4.1.3'
	s.dependency 'FBSDKCoreKit', '~> 4.19.0'
	s.dependency 'FBSDKLoginKit', '~> 4.19.0'
	s.dependency 'FBSDKShareKit', '~> 4.19.0'
	s.dependency 'FBNotifications', '~> 1.0.1'
	s.dependency 'SSZipArchive', '~> 2.1.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.7.0'
	s.dependency 'GoogleMobileAds'
	s.dependency 'TwitterKit', '= 3.3.0'
	s.dependency 'TwitterCore', '= 3.1.0'
	s.dependency 'Toaster'

	# Applicater's Private Pod frameworks

	s.dependency 'APSiren', '~> 1.2.0'
	s.dependency 'e-planning', '~> 4.2'
	s.dependency 'Freewheel', '~> 5.18.2'
	s.dependency 'AppoxeeSDK', '~> 4.0.13'
	s.dependency 'ZappPlugins', '~> 2.2.0'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.dependency 'SHMKit_Applicaster', '~> 0.1.3'
	s.dependency 'MPNotificationView_Applicaster', '~> 1.1.2'
	s.dependency 'FLAnimatedImage_Applicaster','~> 1.1.0'
	s.dependency 'ZappAppConnector', '~> 2.2.0'

end
