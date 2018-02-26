Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"
	s.version = "3.0.5"
	s.ios.deployment_target = "8.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_3.0.5_0d5341f8342d251d7af7bff32500000efb06ebab.zip"
	}
	s.frameworks = 'Foundation' , 'EventKit' , 'EventKitUI' , 'WebKit' , 'AdSupport' , 'Accounts' , 'Social' ,
	'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'iAd' ,
	'CoreData' , 'CoreText' , 'CFNetwork' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'QuickLook' , 'AssetsLibrary' ,
	'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Accelerate' , 'MediaPlayer' , 'AddressBook'
	s.libraries = 'iconv' , 'resolv' , 'xml2' , 'sqlite3.0' , 'c++' , 'z'
	s.vendored_frameworks = 'ApplicasterSDK.framework'

	# Public frameworks

	s.dependency 'AFNetworking', '~> 2.6.3'
	s.dependency 'CocoaLumberjack', '~> 1.9.2'
	s.dependency 'Flurry-iOS-SDK', '~> 7.3.0'
	s.dependency 'Mixpanel', '~> 2.9.0'
	s.dependency 'TTTAttributedLabel', '~> 1.13.1'
	s.dependency 'NKJWT', '~> 0.1.0'
	s.dependency 'SHMKit', '~> 0.1.2'
	s.dependency 'FormatterKit', '~> 1.8.0'
	s.dependency 'HockeySDK', '~> 3.8.5'
	s.dependency 'FBSDKCoreKit', '~> 4.7.0'
	s.dependency 'FBSDKLoginKit', '~> 4.7.0'
	s.dependency 'FBSDKShareKit', '~> 4.7.0'
	s.dependency 'SSZipArchive', '~> 1.1'
	s.dependency 'GoogleAnalytics', '~> 3.14.0'
	s.dependency 'Google-Mobile-Ads-SDK', '~> 7.6.0'
	s.dependency 'GoogleAds-IMA-iOS-SDK-For-AdMob', '~> 3.1.0'
	s.dependency 'comScore-iOS-SDK', '~> 3.1509.15'

	# Applicater's Private Pod frameworks

	s.dependency 'APSiren', '~> 1.0.4'
	s.dependency 'e-planning', '~> 1.15'
	s.dependency 'Freewheel', '~> 5.18.2'
	s.dependency 'Appoxee', '~> 4.0.7'
	s.dependency 'Akamai-Analytics', '~> 1.3'
	s.dependency 'MPNotificationView_Applicaster', '~> 1.1.2'
	s.dependency 'FLAnimatedImage_Applicaster','~> 1.0.9'

end
