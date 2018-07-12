Pod::Spec.new do |s|
  s.name             = "ZappGeneralPlugins"
  s.version          = '4.0.1'
  s.summary          = "ZappGeneralPlugins"
  s.description      = <<-DESC
                        ZappGeneralPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappGeneralPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPlugins_Framework_4.0.1_e1ba57be61443a005a1b0affcedce8f49f23cf1e.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'
  s.xcconfig =  {
                'SWIFT_VERSION' => '4.1'
              }

  # required for all subspecs
  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
  end

  #--------------SUBSPECS--------------

  s.subspec 'DynamicShortcutItems' do |dynamicShortcutItems|
    dynamicShortcutItems.vendored_frameworks = 'ZappGeneralPluginDynamicShortcutItems.framework'
    dynamicShortcutItems.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
              }

    dynamicShortcutItems.dependency 'ZappGeneralPlugins/Basic'
    dynamicShortcutItems.dependency 'ApplicasterSDK'
  end

  s.subspec 'SpotlightSubscription' do |spotlightSubscription|
    spotlightSubscription.vendored_frameworks = 'ZappGeneralPluginSpotlightSubscription.framework'
    spotlightSubscription.frameworks = 'CoreSpotlight'
    spotlightSubscription.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                }

    spotlightSubscription.dependency 'ZappGeneralPlugins/Basic'
  end

  s.subspec 'SpotlightUserActivitySearch' do |spotlightUserActivitySearch|
    spotlightUserActivitySearch.vendored_frameworks = 'ZappGeneralPluginSpotlightUserActivitySearch.framework'
    spotlightUserActivitySearch.frameworks = 'CoreSpotlight'

    spotlightUserActivitySearch.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                            'ENABLE_BITCODE' => 'YES'
                }

    spotlightUserActivitySearch.dependency 'ZappGeneralPlugins/Basic'
    spotlightUserActivitySearch.dependency 'ApplicasterSDK'
  end

  s.subspec 'AgofSurvey' do |agofSurvey|
    agofSurvey.vendored_frameworks = 'ZappGeneralPluginAgofSurvey.framework'
    agofSurvey.frameworks = 'CoreTelephony'
    agofSurvey.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'OTHER_LDFLAGS' => '$(inherited) -framework "IRSurveyLib"',
                      'ENABLE_BITCODE' => 'YES'
                }

    agofSurvey.dependency 'ZappGeneralPlugins/Basic'
    agofSurvey.dependency 'INFOnlineSurvey', '~> 1.8.0'

  end

  s.subspec 'AdwordsAppInstallTracking' do |adwordsAppInstallTracking|
    adwordsAppInstallTracking.vendored_frameworks = 'ZappGeneralPluginAdwordsAppInstallTracking.framework'
    adwordsAppInstallTracking.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -objc -l"GoogleConversionTracking"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES'
                }

    adwordsAppInstallTracking.dependency 'ZappGeneralPlugins/Basic'
    adwordsAppInstallTracking.dependency 'GoogleConversionTracking'
    adwordsAppInstallTracking.dependency 'ApplicasterSDK'

  end

  s.subspec 'ProsiebenHandleUniversalLinks' do |prosiebenHandleUniversalLinks|
    prosiebenHandleUniversalLinks.vendored_frameworks = 'ZappGeneralPluginUniversalLinksProsieben.framework', 'ZappGeneralPluginUniversalLinksBase.framework'
    prosiebenHandleUniversalLinks.dependency 'ZappGeneralPlugins/Basic'
    prosiebenHandleUniversalLinks.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                            'ENABLE_BITCODE' => 'YES'
                          }
  end

  s.subspec 'DatasourceExtensionsReshet' do |datasourceExtensionsReshet|
    datasourceExtensionsReshet.vendored_frameworks = 'ZappGeneralPluginDatasourceExtensionsReshet.framework'
    datasourceExtensionsReshet.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                            'ENABLE_BITCODE' => 'YES'
                }

    datasourceExtensionsReshet.dependency 'ZappGeneralPlugins/Basic'
    datasourceExtensionsReshet.dependency 'ApplicasterSDK'
    datasourceExtensionsReshet.dependency 'ComponentsSDK'
    datasourceExtensionsReshet.dependency 'DateToolsSwift'

    datasourceExtensionsReshet.resources = [
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.nib',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.bundle',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.caf',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.aiff',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.png',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.jpg',
      'ZappGeneralPluginDatasourceExtensionsReshet.framework/*.jpeg'
    ]
  end

  s.subspec 'Packetzoom' do |packetZoom|
    packetZoom.vendored_frameworks = 'ZappGeneralPluginPacketZoom.framework'
    packetZoom.dependency 'ZappGeneralPlugins/Basic'
    packetZoom.dependency 'PZSpeed'
    packetZoom.frameworks = 'UIKit', 'CFNetwork', 'CoreLocation', 'SystemConfiguration', 'Security', 'Foundation', 'CoreTelephony'
    packetZoom.libraries = 'c++', 'z'
    packetZoom.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                            'ENABLE_BITCODE' => 'YES'
                          }

  end

  s.subspec 'DatasourceExtensionsJpost' do |datasourceExtensionsJpost|
    datasourceExtensionsJpost.vendored_frameworks = 'ZappGeneralPluginDatasourceExtensionsJpost.framework'
    datasourceExtensionsJpost.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                            'ENABLE_BITCODE' => 'YES'
                          }
    datasourceExtensionsJpost.dependency 'ZappGeneralPlugins/Basic'
    datasourceExtensionsJpost.dependency 'ApplicasterSDK'
    datasourceExtensionsJpost.dependency 'ComponentsSDK'

    datasourceExtensionsJpost.resources = [
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.nib',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.bundle',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.caf',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.aiff',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.png',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.jpg',
      'ZappGeneralPluginDatasourceExtensionsJpost.framework/*.jpeg'
    ]
  end
end
