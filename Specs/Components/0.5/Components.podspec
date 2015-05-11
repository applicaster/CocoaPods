Pod::Spec.new do |s|
  s.name         = "Components"
  s.version      = "0.5"
  s.ios.deployment_target = "7.0"
  s.summary      = "ComponentsSDK"
  s.description  = "Create components"
  s.homepage     = "https://github.com"
  s.license      = { :type => 'Commercial', :text => <<-LICENSE
                        Copyright 2015
                        LICENSE
                   }
  s.author       = { "kononenkoAnton" => "a.kononenko@applicaster.com" }
  s.source       = { 
                     :git => 'https://github.com/applicaster/ComponentsSDK-iOS.git',
                     :tag => s.version.to_s 
                    }
  s.source_files  = "Components/**/*.{h,m}" 
  s.ios.resource_bundle = { 'ComponentsBundle' => ['ComponentsBundle/CAComponentsMapping.plist', 'Components/Classes/Components/**/*.xib'] }

  s.framework     = "Foundation"

  s.dependency 'AFNetworking', '~> 2.5.3'

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end