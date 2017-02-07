Pod::Spec.new do |s|

	# The name of the Pod
	s.name = "Applicaster"

	# The version of the Pod
	s.version = "2.18.181"

	# The minimum deployment targets of the supported platforms
	s.ios.platform = :ios
	s.ios.deployment_target = "7.0"

	# A short (maximum 140 characters) description of the Pod
	s.summary = "Applicaster SDK"

	# The description of the Pod
	s.description = "Podspec of Applicaster library"

	# The URL of the homepage of the Pod
	s.homepage = "https://github.com"

	# The license of the Pod
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
		Copyright 2015
		LICENSE
	}

	s.author = {
		"Miri Vecselboim" => "m.vecselboim@applicaster.com",
		"Simon Borkin" => "s.borkin@applicaster.com"
	}
				 
	# The location from where the library should be retrieved
	s.source = { 
    	"http" => "https://dl.bintray.com/applicaster-ltd/Stars-Team-iOS/ApplicasterFramework_2.18.181_Release.zip"
	}

	# A list of system frameworks that the user’s target needs to link against.
	s.frameworks = 'Foundation' , 'AdSupport' , 'Accounts' , 'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'CoreData' , 'CoreText' , 'CFNetwork' , 'iAd' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Social' , 'Accelerate' , 'MediaPlayer' , 'AddressBook' , 'QuickLook'

	# Allows you to specify which source_files use ARC. This can either be the files which support ARC, or true to indicate all of the source_files use ARC
	s.requires_arc = true

	# A list of system libraries that the user’s target needs to link against
	s.ios.libraries = 'iconv' , 'resolv' , 'xml2' , 'sqlite3.0' , 'z'
	
	# Will add the framework to the project once the installation completes
	s.preserve_paths = 'Applicaster.framework'
	s.vendored_frameworks = 'Applicaster.framework'
	s.vendored_libraries = 'Applicaster.framework/libAdManager.a'
 	s.resources = ["Applicaster.framework/Resources/*"]

	# External frameworks
	s.dependency 'CocoaLumberjack', '= 1.9.2'

	s.dependency 'FBSDKCoreKit', '= 4.7.0'
	s.dependency 'FBSDKLoginKit', '= 4.7.0'
	s.dependency 'FBSDKShareKit', '= 4.7.0'
	
	s.dependency 'google-cast-sdk', '= 2.10.1'
	s.dependency 'GoogleAnalytics', '= 3.14.0'
	s.dependency 'Google-Mobile-Ads-SDK', '= 7.6.0'

	s.dependency 'HockeySDK', '= 3.8.5'
	s.dependency 'Flurry-iOS-SDK', '= 7.3.0'
	
	s.dependency 'Mixpanel', '= 2.9.1'
	s.dependency 'comScore-iOS-SDK', '= 3.1509.15'

	s.dependency 'AFNetworking', '= 2.6.3'
	s.dependency 'TTTAttributedLabel', '= 1.13.1'
	
end
