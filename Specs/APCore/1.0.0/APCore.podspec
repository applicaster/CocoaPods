Pod::Spec.new do |s|
  s.name         = "APCore"
  s.version      = "1.0.0"
  s.ios.deployment_target = "8.0"
  s.summary      = "APCore SDK"
  s.description  = "APCore SDK"
  s.homepage     = "https://github.com"
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2016
                        LICENSE
                   }
  s.author       = { "Philip Kramarov" => "p.kramarov@applicaster.com" }
  s.source       = {
                     :git => 'https://github.com/applicaster/ios_core.git',
                     :tag => s.version.to_s
                    }
  s.source_files  = "/**/*.{h,m}"
  s.public_header_files  = "/**/*.h"

  #s.exclude_files = "**/*.h"
  s.framework     = "Foundation"

  #s.dependency 'Specta', '~> 0.4.0'
  #s.dependency 'Expecta', '~> 0.3.2'
  #s.dependency 'OCMock', '~> 3.1.2'

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end
