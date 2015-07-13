Pod::Spec.new do |s|

    #The name of the Pod.
  s.name         = "APApplicasterRelease"

    #The version of the Pod.
  s.version      = "1.0.0"
  
    #The minimum deployment targets of the supported platforms.
  s.ios.deployment_target = "7.0"
  
    #A short (maximum 140 characters) description of the Pod.
  s.summary      = "APApplicaster sdk static lite"

    #The description of the Pod.
  s.description  = "Podspec of applicaster SDK Static library"
  
    #The URL of the homepage of the Pod.
  s.homepage     = "https://github.com"
  
    #The license of the Pod.
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2015
                        LICENSE
                   }
  s.author       = { "Miri Vecselboim" => "m.vecselboim@applicaster.com" }
  
    #The location from where the library should be retrieved.
  s.source       = { 
                     :git => 'https://github.com/applicaster/ApplicasterSDK-Static-Lite.git',
                     :tag => s.version.to_s 
                    }

    #Any file that should not be removed after being downloaded. By default, CocoaPods removes all files that are not matched by any of the other file pattern.
  s.preserve_paths = "*"    

    #A list of resources that should be copied into the target bundle.
  s.resources = "Resources/**"

    #A list of system frameworks that the user’s target needs to link against.
  s.frameworks = 'Foundation' , 'AdSupport' , 'Accounts' , 'AudioToolbox' , 'AVFoundation' , 'CoreTelephony' , 'CoreMotion' , 'CoreMedia' , 'CoreLocation' , 'CoreData' , 'CoreText' , 'CFNetwork' , 'iAd' , 'Twitter' , 'QuartzCore' , 'MobileCoreServices' , 'MessageUI' , 'StoreKit' , 'SystemConfiguration' , 'Social' , 'Accelerate' , 'MediaPlayer' , 'AddressBook' , 'QuickLook'

    #Allows you to specify which source_files use ARC. This can either be the files which support ARC, or true to indicate all of the source_files use ARC.
  s.requires_arc = true

  s.default_subspec = 'Release'

s.subspec "Debug" do |sp|
    sp.vendored_libraries = 'libApplicaster_Lite_Debug.a', 'ThirdParty/FreeWheel/libAdManager.a'
    sp.library = 'Applicaster_Lite_Debug'
#    sp.dependency 'APFeed2/Debug'
    sp.libraries = 'z', 'xml2', 'sqlite3', 'resolv', 'iconv'
 #   sp.source_files = ['**/ApplicasterHeaders/*.h','**/Third Party/FHSTwitterEngine/*.{h,m}']
 #   sp.public_header_files = '**/Headers/Applicaster/*.h'
    sp.resource = '**/Resources/*'
    sp.exclude_files = '**/Resources/Settings.bundle'
  end

s.subspec "Release" do |sp|
    sp.vendored_libraries = 'libApplicaster_Lite_Release.a', 'Third Party/FreeWheel/libAdManager.a'
    sp.library = 'Applicaster_Lite_Release'  
  #  sp.dependency 'APFeed2/Release'
    sp.libraries = 'z', 'xml2', 'sqlite3', 'resolv', 'iconv'
 #   sp.source_files = ['**/ApplicasterHeaders/*.h','**/Third Party/FHSTwitterEngine/*.{h,m}']
 #   sp.public_header_files = '**/Headers/Applicaster/*.h'
    sp.resource = '**/Resources/*'
    sp.exclude_files = '**/Resources/Settings.bundle'
  end

end
