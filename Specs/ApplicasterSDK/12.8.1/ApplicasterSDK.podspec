Pod::Spec.new do |s|
	s.name = "ApplicasterSDK"
	# The version is replaced with the tag when running the deploy script
	s.version = "12.8.1"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterSDK"
	s.description = "ApplicasterSDK"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterSDK_Framework_12.8.1_9d89b320f7979bf86cb56d3ebf3e09c076d595e7.zip"
	}

	s.frameworks = 'Foundation', 'EventKit', 'EventKitUI', 'WebKit', 'Accounts', 'Social',
	'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'CoreMedia', 'CoreLocation', 'iAd',
	'CoreData', 'CoreText', 'CFNetwork', 'QuartzCore', 'MobileCoreServices', 'QuickLook', 'AssetsLibrary',
	'MessageUI', 'StoreKit', 'SystemConfiguration', 'Accelerate', 'MediaPlayer', 'AddressBook', 'CoreGraphics', 'SafariServices'
	s.libraries = 'iconv', 'resolv', 'xml2', 'sqlite3.0', 'c++', 'z'
	s.vendored_frameworks = 'ApplicasterSDK.framework'
	s.preserve_paths = 'ApplicasterSDK.framework/*'

# Needed in case static_framework
# s.static_framework = true
	# s.resources = [
	# 	'ApplicasterSDK.framework/*.nib',
	# 	'ApplicasterSDK.framework/*.bundle',
	# 	'ApplicasterSDK.framework/*.caf',
	# 	'ApplicasterSDK.framework/*.aiff',
	# 	'ApplicasterSDK.framework/*.png',
	# 	'ApplicasterSDK.framework/*.jpg',
	# 	'ApplicasterSDK.framework/*.jpeg'
	# ]

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
