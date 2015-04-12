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
  s.resources = "Resources/**/*.{xib,png}", "libApplicaster_Lite_Release.a"
  s.framework     = "Foundation"

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end