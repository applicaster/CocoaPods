Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '5.0.0'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_5.0.0_2889fd5fc2408113d89ff112f02e20325b26337b.zip"
  }
  s.platform     = :ios, '10.0'

  s.requires_arc = true
  s.default_subspec = 'Default'
  s.static_framework = true

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.vendored_frameworks = 'ZappReactNativeAdapter.framework'
    default.xcconfig =  {
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    default.dependency 'ZappPlugins', '~> 8.0.0'
    default.dependency 'ApplicasterSDK', '~> 9.0.0'
    default.dependency 'ZappPushPluginsSDK', '~> 7.0.0'
    default.dependency 'ZappLoginPluginsSDK', '~> 7.0.0'

  end

end
