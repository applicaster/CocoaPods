Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"
	# The version is replaced with the tag when running the deploy script
	s.version = "13.0.0"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_13.0.0_6c89dbfd1bc40acb4ac9d38bbdb25437cc7f9ce7.zip"
	}

	s.frameworks = 'Foundation', 'EventKit', 'EventKitUI', 'WebKit', 'Accounts', 'Social',
	'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'iAd',
	'CoreData', 'CoreText', 'CFNetwork', 'QuartzCore', 'MobileCoreServices', 'QuickLook', 'AssetsLibrary',
	'MessageUI', 'StoreKit', 'SystemConfiguration', 'Accelerate', 'MediaPlayer', 'AddressBook', 'CoreGraphics', 'SafariServices'
	s.libraries = 'iconv', 'resolv', 'xml2', 'sqlite3.0', 'c++', 'z'
	s.vendored_frameworks = 'ApplicasterSDK.xcframework'
	s.preserve_paths = 'ApplicasterSDK.xcframework/*'

	s.resources = [
		'**/ApplicasterSDK.framework/*.nib',
		'**/ApplicasterSDK.framework/*.png',
		'**/ApplicasterSDK.framework/*.jpg',
		'**/ApplicasterSDK.framework/*.jpeg',
		'**/ApplicasterSDK.framework/APFeedSettings.plist',
		'**/ApplicasterSDK.framework/ApplicasterSettings.plist'
	]
		
	s.xcconfig = {
		'OTHER_CFLAGS'  => '-fembed-bitcode',
		'OTHER_LDFLAGS' => '$(inherited) -framework "TwitterKit" -framework "TwitterCore"',
		'ENABLE_BITCODE' => 'YES',
		'GCC_WARN_UNDECLARED_SELECTOR' => "NO",
		'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
		'SWIFT_VERSION' => '5.1',
	}

	# Public frameworks

	s.dependency 'Alamofire', '= 5.2.2'
  	s.dependency 'CocoaLumberjack/Swift', '= 3.5.3'
  	s.dependency 'TTTAttributedLabel', '= 2.1.0'
  	s.dependency 'SSZipArchive', '= 2.1.0'
  	s.dependency 'TwitterKit', '= 3.4.2'

	# Applicater's Private Pod frameworks
	s.dependency 'ZappPlugins', '~> 11.8.0'

end
