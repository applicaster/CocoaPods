Pod::Spec.new do |s|
  s.name  = "ZappPushPlugins"
  s.version = '3.3.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPlugins"
  s.description = "ZappPushPlugins container."
  s.homepage  = "https://github.com/applicaster/ZappPushPlugins-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPlugins_Framework_3.3.0_985b67d18b4a3a23ebc7bedb43bb02b3c94012b4.zip"
  }

  s.requires_arc = true
  s.default_subspec = 'Lite'

  # required for all subspecs
  s.subspec 'Lite' do |lite|
    lite.dependency 'ZappPushPlugins/UrbanAirship'
  end

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins', '~> 4.6.0'
  end
  s.xcconfig =  {
                'SWIFT_VERSION' => '4.1',
                'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
  #--------------SUBSPECS--------------
  s.subspec 'UrbanAirship' do |ua|
    ua.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'
    ua.dependency 'ZappPushPlugins/Basic'
    ua.dependency 'UrbanAirship-iOS-SDK', '~> 8.6.3'
  end

  s.subspec 'UrbanAirshipAppExtensions' do |ua_extensions|

    ua_extensions.xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) AIRSHIP_EXTENSIONS_ENABLED=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DAIRSHIP_EXTENSIONS_ENABLED=1',
      'ENABLE_BITCODE' => 'YES'
    }

    ua_extensions.dependency 'UrbanAirship-iOS-AppExtensions'
  end

end
