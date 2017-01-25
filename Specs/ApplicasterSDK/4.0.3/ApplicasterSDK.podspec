Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "4.0.3"

	s.ios.deployment_target = "8.0"
		s.summary = "ApplicasterSDK"
		s.description = "ApplicasterSDK"
		s.homepage = "https://applicaster.com"
		s.license = ''
		s.author = "Applicaster LTD."
		s.source = {
      	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_4.0.3_36542d33e93851c9d07e0f3e462d6988e5971b6a.zip"
  	}

		s.frameworks = 'Foundation' , 'EventKit' , 'EventKitUI' , 'WebKit' , 'AdSupport' , 'Accounts' , 'Social' ,
		'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'iAd' ,
		'CoreData' , 'CoreText' , 'CFNetwork' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'QuickLook' , 'AssetsLibrary' ,
		'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Accelerate' , 'MediaPlayer' , 'AddressBook', 'CoreGraphics'
		s.libraries = 'iconv' , 'resolv' , 'xml2' , 'sqlite3.0' , 'c++' , 'z'

		s.vendored_frameworks = 'ApplicasterSDK.framework'

		s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
									'OTHER_LDFLAGS' => '$(inherited) -objc -l"AdManager" -framework "AppoxeeSDK" -framework "GoogleMobileAds" -framework "HockeySDK" -framework "GoogleInteractiveMediaAds"',
									'ENABLE_BITCODE' => 'NO',
									'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
									'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
									'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
									'SWIFT_VERSION' => '3.0'
									}

		# Public frameworks

		s.dependency 'AFNetworking', '~> 3.1.0'
		s.dependency 'CocoaLumberjack/Swift', '~> 3.0.0'
		s.dependency 'TTTAttributedLabel', '~> 2.0.0'
		s.dependency 'NKJWT', '~> 0.1.0'
		s.dependency 'FormatterKit', '~> 1.8.1'
		s.dependency 'HockeySDK', '~> 4.1.3'
		s.dependency 'FBSDKCoreKit', '~> 4.18.0'
		s.dependency 'FBSDKLoginKit', '~> 4.18.0'
		s.dependency 'FBSDKShareKit', '~> 4.18.0'
		s.dependency 'FBNotifications', '~> 1.0.1'
		s.dependency 'SSZipArchive', '~> 1.6.2'
		s.dependency 'Firebase/Core', '~> 3.3.0'
		s.dependency 'Firebase/AdMob', '~> 3.3.0'
		s.dependency 'GoogleAds-IMA-iOS-SDK-For-AdMob', '~> 3.3.1'

		# Applicater's Private Pod frameworks

		s.dependency 'APSiren', '~> 1.1.2'
		s.dependency 'e-planning', '~> 1.15'
		s.dependency 'Freewheel', '~> 5.18.2'
		s.dependency 'AppoxeeSDK', '~> 4.0.13'
		s.dependency 'ZappPlugins', '~> 1.0.2'

		s.dependency 'SHMKit_Applicaster', '~> 0.1.3'
		s.dependency 'MPNotificationView_Applicaster', '~> 1.1.2'
		s.dependency 'FLAnimatedImage_Applicaster','~> 1.1.0'

		# Integration ONLY
		s.dependency 'ZappAnalyticsPlugins/Flurry','~> 1.0.1'
end
