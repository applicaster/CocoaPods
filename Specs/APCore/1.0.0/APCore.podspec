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

  s.dependency 'Mixpanel', '~> 2.9.1'
  s.dependency 'Flurry-iOS-SDK/FlurrySDK', '~> 7.3.0'
  s.dependency 'GoogleAnalytics', '~> 3.14.0'

  s.dependency 'FBSDKCoreKit', '~> 4.9.0'
  s.dependency 'FBSDKShareKit', '~> 4.9.0'
  s.dependency 'FBSDKLoginKit', '~> 4.9.0'

  s.dependency 'Google-Mobile-Ads-SDK', '~> 7.6.0'

  s.dependency 'NKJWT', '~> 0.1.0'
  s.dependency 'HockeySDK', '~> 3.8.5'

  s.requires_arc = true
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }

end
