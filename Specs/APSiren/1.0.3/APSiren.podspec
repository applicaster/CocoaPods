Pod::Spec.new do |s|
  s.name         = "APSiren"
  s.version      = "1.0.3"
  s.ios.deployment_target = "7.0"
  s.summary      = "APSiren Parser"
  s.description  = "APSiren Parser. Helps load JSON and parse it with Siren structure."
  s.homepage     = "https://github.com"
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2015
                        LICENSE
                   }
  s.author       = { "kononenkoAnton" => "anton@kenlo-group.com" }
  s.source       = { 
                     :git => 'https://github.com/applicaster/SirenParser-iOS.git',
                     :tag => s.version.to_s 
                    }
  s.source_files  = "APSiren/**/*.{h,m}"  
  #s.exclude_files = "APSiren/APSirenTests/**/*.{h,m}"
  s.framework     = "Foundation"

  #s.dependency 'Specta', '~> 0.4.0'
  #s.dependency 'Expecta', '~> 0.3.2'
  #s.dependency 'OCMock', '~> 3.1.2'

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end
