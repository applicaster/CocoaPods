Pod::Spec.new do |s|
  s.name             = "ZappAnalyticsPlugins"
  s.version = '4.0.1'
  s.summary          = "ZappAnalyticsPlugins"
  s.description      = <<-DESC
                        ZappAnalyticsPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappAnalyticsPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPlugins_Framework_4.0.1_f89d1c0c9d6746c7dfc4a8011749781de01fd93b.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'
  s.static_framework = true

  #--------------SUBSPECS--------------
  s.subspec 'Basic' do |basic|
    basic.xcconfig =  { 'SWIFT_VERSION' => '4.1' }
    basic.dependency 'ZappPlugins'
    basic.dependency 'Toaster'
    basic.vendored_frameworks = 'ZappAnalyticsPluginBase.framework'
  end

  s.subspec 'Mixpanel' do |mixpanel|
    mixpanel.vendored_frameworks = 'ZappAnalyticsPluginMixpanel.framework'
    mixpanel.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES'
                }

    mixpanel.dependency 'ZappAnalyticsPlugins/Basic'
    mixpanel.dependency 'Mixpanel-swift', '~> 2.4.2'
  end

  s.subspec 'GoogleAnalytics' do |ga|
    ga.vendored_frameworks = 'ZappAnalyticsPluginGA.framework'
    ga.frameworks = 'AdSupport', 'CoreData', 'SystemConfiguration'
    ga.libraries = 'sqlite3.0', 'z'

    ga.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'OTHER_LDFLAGS' => '$(inherited) -l"GoogleAnalytics"',
                      'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'ENABLE_BITCODE' => 'YES'
                }

    ga.dependency 'ZappAnalyticsPlugins/Basic'
    ga.dependency 'GoogleAnalytics', '~> 3.17.0'
  end

  s.subspec 'Flurry' do |flurry|
    flurry.vendored_frameworks = 'ZappAnalyticsPluginFlurry.framework'

    flurry.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES'
                }

    flurry.dependency 'ZappAnalyticsPlugins/Basic'
    flurry.dependency 'Flurry-iOS-SDK', '~> 7.6.4'
  end

  s.subspec 'ComScore' do |comscore|
    comscore.vendored_frameworks = 'ZappAnalyticsPluginComScore.framework'

    comscore.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES'
                }

    comscore.dependency 'ZappAnalyticsPlugins/Basic'
    comscore.dependency 'ComScore-iOS', '~> 5.7.0'
  end

  s.subspec 'Akamai' do |akamai|
    akamai.vendored_frameworks = 'ZappAnalyticsPluginAkamai.framework'
    akamai.frameworks = 'MediaPlayer', 'SystemConfiguration', 'CoreMedia'

    akamai.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -l"AKAMMediaExtensions-AV"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                }

    akamai.dependency 'ZappAnalyticsPlugins/Basic'
    akamai.dependency 'Akamai-Analytics', '~> 1.3'
  end

  s.subspec 'Facebook' do |fb|
    fb.vendored_frameworks = 'ZappAnalyticsPluginFacebook.framework'

    fb.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES'
                }

    fb.dependency 'ZappAnalyticsPlugins/Basic'
    fb.dependency 'FBSDKCoreKit', '~> 4.33.0'
  end

  s.subspec 'Agof' do |agof|
    agof.vendored_frameworks = 'ZappAnalyticsPluginAgof.framework'

    agof.frameworks = 'CoreTelephony', 'SystemConfiguration'
    agof.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'ENABLE_BITCODE' => 'YES'
                }

    agof.dependency 'ZappAnalyticsPlugins/Basic'
    agof.dependency 'INFOnlineLibrary', '~> 2.2.0'

  end

  s.subspec 'Liftoff' do |liftoff|
    liftoff.vendored_frameworks = 'ZappAnalyticsPluginLiftoff.framework'

    liftoff.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'ENABLE_BITCODE' => 'YES'
                }

    liftoff.dependency 'ZappAnalyticsPlugins/Basic'
    liftoff.dependency 'Liftoff'
  end

  s.subspec 'CoolaData' do |cooladata|
     cooladata.vendored_frameworks = 'ZappAnalyticsPluginCoolaData.framework'

     cooladata.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "cooladata-ios-sdk"',
                             'ENABLE_BITCODE' => 'YES'
                 }

     cooladata.dependency 'ZappAnalyticsPlugins/Basic'
     cooladata.dependency 'CoolaPod'
   end

   s.subspec 'OWA' do |owa|
     owa.vendored_frameworks = 'ZappAnalyticsPluginOwa.framework'
     owa.frameworks = 'CoreTelephony', 'SystemConfiguration'

     owa.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                       'ENABLE_BITCODE' => 'YES'
                 }
     owa.dependency 'ZappAnalyticsPlugins/Agof'
   end

   s.subspec 'NetMetrix' do |netmetrix|
     netmetrix.vendored_frameworks = 'ZappAnalyticsPluginNetMetrix.framework'

     netmetrix.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                       'ENABLE_BITCODE' => 'YES'
                 }

     netmetrix.dependency 'ZappAnalyticsPlugins/Basic'
     netmetrix.dependency 'NETMetrixTrackingClient', '~> 1.1.0'
   end

   s.subspec 'AppsFlyer' do |appsflyer|
     appsflyer.vendored_frameworks = 'ZappAnalyticsPluginAppsFlyer.framework'
     appsflyer.frameworks = 'AdSupport'

     appsflyer.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
      'OTHER_LDFLAGS' => '$(inherited) -framework "AppsFlyerLib"',
                            'ENABLE_BITCODE' => 'YES'
                }

     appsflyer.dependency 'ZappAnalyticsPlugins/Basic'
     appsflyer.dependency 'AppsFlyerFramework'
  end

  s.subspec 'Firebase' do |firebase|
     firebase.vendored_frameworks = 'ZappAnalyticsPluginFirebase.framework'

     firebase.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseAnalytics"',
                             'ENABLE_BITCODE' => 'YES'
                 }

     firebase.dependency 'ZappAnalyticsPlugins/Basic'
     firebase.dependency 'Firebase', '~> 4.12.0'
     firebase.dependency 'Firebase/Analytics'
   end

   s.subspec 'Talamoos' do |talamoos|
     talamoos.vendored_frameworks = 'ZappAnalyticsPluginTalamoos.framework'

     talamoos.dependency 'ZappAnalyticsPlugins/Basic'
     talamoos.dependency 'Alamofire', '~> 4.7.0'
   end

   s.subspec 'Chartbeat' do |chartbeat|
     chartbeat.vendored_frameworks = 'ZappAnalyticsPluginChartbeat.framework'
     chartbeat.frameworks = 'CoreGraphics','UIKit','Chartbeat'
     chartbeat.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                       'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Chartbeat/Chartbeat.framework/Headers/CBTracker.h"',
                       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                       'ENABLE_BITCODE' => 'YES'
                 }
     chartbeat.dependency 'ZappAnalyticsPlugins/Basic'
     chartbeat.dependency 'Chartbeat'
   end

   s.subspec 'Nielsen' do |nielsen|
    nielsen.vendored_frameworks = 'ZappAnalyticsPluginNielsen.framework'
    nielsen.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'ENABLE_BITCODE' => 'YES'
              }

    nielsen.dependency 'ZappAnalyticsPlugins/Basic'
  end
end
