Pod::Spec.new do |s|
  s.name             = "ZappBroadcasterPickerPlugins"
  s.version          = '3.1.1'
  s.summary          = "ZappBroadcasterPickerPlugins"
  s.description      = <<-DESC
                        ZappBroadcasterPickerPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappBroadcasterPickerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPlugins_Framework_3.1.1_9106f8f0c2ecdf04a500fc6083d18afeba6c1ea0.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs
  s.xcconfig =  {
                'SWIFT_VERSION' => '4.1'
              }

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.dependency 'AFNetworking', '~> 3.2.0'
    basic.dependency 'ApplicasterSDK'
    basic.vendored_frameworks = 'ZappBroadcasterPickerPluginBase.framework'
  end

  #--------------SUBSPECS--------------
  s.subspec 'GermanCountryIP' do |germanCountryIP|
    germanCountryIP.vendored_frameworks = 'ZappBroadcasterPickerPluginByGermanCountryIP.framework'
    germanCountryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES'
                }
    germanCountryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'CountryIP' do |countryIP|
    countryIP.vendored_frameworks = 'ZappBroadcasterPickerPluginByCountryIP.framework'
    countryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES'
                }
    countryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Kwese' do |kwese|
    kwese.vendored_frameworks = 'ZappBroadcasterPickerPluginForKwese.framework'
    kwese.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES'
                }

    kwese.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Localization' do |localization|
    localization.vendored_frameworks = 'ZappBroadcasterPickerPluginByLocalization.framework'
    localization.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES'
                }
    localization.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'LibrarySelector' do |librarySelector|
    librarySelector.vendored_frameworks = 'ZappBroadcasterPickerPluginLibrarySelector.framework'
    librarySelector.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES'
                }
    librarySelector.dependency 'ZappBroadcasterPickerPlugins/Basic'
    librarySelector.resources = ['ZappBroadcasterPickerPluginLibrarySelector.framework/BroadcasterListView*.nib']
  end
end
