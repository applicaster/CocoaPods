Pod::Spec.new do |s|

    #The name of the Pod.
  s.name         = "ApplicasterCore"

    #The version of the Pod.
  s.version      = "2.17.174"
  
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

  s.subspec 'ApplicasterCore' do |ss|
      ss.source_files = '**/ApplicasterHeaders/ApplicasterCore/*.h'
  end

  s.public_header_files = '**/ApplicasterHeaders/ApplicasterCore/*.h'

  s.ios.xcconfig = { "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/ApplicasterHeaders/ApplicasterCore"' }

  s.ios.xcconfig = { "PODS_PUBLIC_HEADERS_SEARCH_PATHS" => '"${PODS_ROOT}/ApplicasterHeaders/ApplicasterCore"' }  
  
end