Pod::Spec.new do |s|
  s.name         = "APApplicasterRelease"
  s.version      = "1.0.0"
  s.ios.deployment_target = "7.0"
  s.summary      = "APApplicaster sdk static lite"
  s.description  = "Podspec of applicaster SDK Static library"
  s.homepage     = "https://github.com"
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2015
                        LICENSE
                   }
  s.author       = { "Miri Vecselboim" => "m.vecselboim@applicaster.com" }
  s.source       = { 
                     :git => 'https://github.com/applicaster/ApplicasterSDK-Static-Lite.git',
                     :tag => s.version.to_s 
                    }

  s.preserve_paths = "*"    
  #s.source_files = "Classes/**/*.{h,m}"
  # s.source_files = "ThirdParty/**/*.{h,m}"
  s.resources = "Resources/**"
  s.frameworks = 'Foundation' , 'AdSupport' , 'Accounts' , 'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'CoreData' , 'CoreText' , 'CFNetwork' , 'iAd' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Social' , 'Accelerate' , 'MediaPlayer' , 'AddressBook' , 'QuickLook'

  #s.libraries = 'iconv' , 'resolv' , 'xml2' , 'sqlite3.0' , 'z'
  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }
  s.ios.xcconfig = { "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/ApplicasterHeaders"' }
  s.ios.xcconfig = { "LIBRARY_SEARCH_PATHS" => '"${PODS_ROOT}/**"' }
  #s.libraries = "Applicaster_Lite_Release", "AdManager" 
  
  s.ios.vendored_library = 'libApplicaster_Lite_Release.a'
  s.ios.vendored_library = 'ThirdParty/FreeWheel/libAdManager.a'
 # s.prefix_header_contents = "#import <Applicaster/APApplicaster.h>"

end