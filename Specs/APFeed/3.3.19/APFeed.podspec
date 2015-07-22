Pod::Spec.new do |s|
   #The name of the Pod.
  s.name         = "APFeed"
  
   #The version of the Pod.
  s.version      = "3.3.19"

   #The minimum deployment targets of the supported platforms.
  s.ios.deployment_target = "7.0"
  
   #A short (maximum 140 characters) description of the Pod.
  s.summary      = "APFeed static library"

   #The description of the Pod.
  s.description  = "A submodule which works with the Applicaster SDK."
  
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
                     :git => 'https://github.com/applicaster/Applicaster-Feed-Static-iOS.git',
                     :tag => s.version.to_s 
                    }

   #Any file that should not be removed after being downloaded. By default, CocoaPods removes all files that are not matched by any of the other file pattern.
  s.preserve_paths = "*" 

  #A list of resources that should be copied into the target bundle.
  s.resources = '**/Resources/*'

   #The system frameworks that the user’s target needs to link against.
  s.framework = 'Foundation'

   #Allows you to specify which source_files use ARC. This can either be the files which support ARC, or true to indicate all of the source_files use ARC.
  s.requires_arc = true

   #xcconfig - any flag to add to the final xcconfig file.
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }
  
  s.ios.xcconfig = { "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/ApplicasterHeaders"' }
  
  s.ios.xcconfig = { "LIBRARY_SEARCH_PATHS" => '"${PODS_ROOT}/**"' }
  
  s.ios.xcconfig = { "PODS_PUBLIC_HEADERS_SEARCH_PATHS" => '"${PODS_ROOT}/ApplicasterHeaders"' }  

  s.public_header_files = '**/ApplicasterHeaders/*.h'
  
  s.source_files = ['**/ApplicasterHeaders/*.h']
    
   #The paths of the libraries that come shipped with the Pod.
  s.ios.vendored_library = 'libAPFeed2_Release.a'

end