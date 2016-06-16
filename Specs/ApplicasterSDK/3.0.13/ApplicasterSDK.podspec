Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"

	# The version is replaced with the tag when running the deploy script
	s.version = "3.0.13"
	
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_3.0.13_82588ce848ca3dc478d8c1ab10865197a76b0cda.zip"
	}
	
	s.frameworks = 'Foundation' , 'EventKit' , 'EventKitUI' , 'WebKit' , 'AdSupport' , 'Accounts' , 'Social' ,
	'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'iAd' ,
	'CoreData' , 'CoreText' , 'CFNetwork' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'QuickLook' , 'AssetsLibrary' ,
	'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Accelerate' , 'MediaPlayer' , 'AddressBook', 'CoreGraphics'
	s.libraries = 'iconv' , 'resolv' , 'xml2' , 'sqlite3.0' , 'c++' , 'z'
	
	s.vendored_frameworks = 'ApplicasterSDK.framework'

	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'OTHER_LDFLAGS' => '$(inherited) -objc -all_load -l"AdManager" -l"AKAMMediaExtensions-AV" -l"comScore" -l"GoogleAnalytics" -framework "AppoxeeSDK" -framework "HockeySDK" -framework "GoogleMobileAds" -framework "GoogleInteractiveMediaAds"',    'ENABLE_BITCODE' => 'NO',
									'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
									'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
									'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
								}

	# Public frameworks

	s.dependency 'AFNetworking', '~> 2.6.3'
	s.dependency 'CocoaLumberjack/Swift'
	s.dependency 'Flurry-iOS-SDK', '~> 7.6.4'
	s.dependency 'Mixpanel', '~> 2.9.0'
	s.dependency 'TTTAttributedLabel', '~> 1.13.1'
	s.dependency 'NKJWT', '~> 0.1.0'
	s.dependency 'FormatterKit', '~> 1.8.0'
	s.dependency 'HockeySDK', '~> 3.8.5'
	s.dependency 'FBSDKCoreKit', '~> 4.11.0'
	s.dependency 'FBSDKLoginKit', '~> 4.11.0'
	s.dependency 'FBSDKShareKit', '~> 4.11.0'
	s.dependency 'FBNotifications'
	s.dependency 'SSZipArchive', '~> 1.1'
	s.dependency 'GoogleAnalytics', '~> 3.14.0'
	s.dependency 'Google-Mobile-Ads-SDK', '~> 7.6.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK-For-AdMob', '~> 3.2.0'
	s.dependency 'comScore-iOS-SDK', '~> 3.1509.15'

	# Applicater's Private Pod frameworks

	s.dependency 'APSiren', '~> 1.1.2'
	s.dependency 'e-planning', '~> 1.15'
	s.dependency 'Freewheel', '~> 5.18.2'
	s.dependency 'Appoxee', '= 4.0.7'
	s.dependency 'Akamai-Analytics', '~> 1.3'

	s.dependency 'SHMKit_Applicaster', '~> 0.1.3'
	s.dependency 'MPNotificationView_Applicaster', '~> 1.1.2'
	s.dependency 'FLAnimatedImage_Applicaster','~> 1.1.0'

end
